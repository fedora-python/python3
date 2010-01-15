#!/bin/bash

# The standard /usr/lib/rpm/find-provides script
# adds provides lines for all SONAME directives in all shared libraries,
# even if those libraries are not in the LD_LIBRARY_PATH

# This leads to the rpm having a redundant Provides "foo.so" for all of the
# various foo.so Python c modules

# So we strip out all /usr/lib/python lines first, before running them through
# the standard script:
grep -v "/usr/lib/python" | /usr/lib/rpm/find-provides

exit 0