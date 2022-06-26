# cfuen/userscripts
My Makefile-based userscript management workflow for [Min](https://github.com/minbrowser/min)

### Makefile-based workflow

To bring your userscripts out of their folders so that Min can detect them, do:
```bash
make spill
```
A few actions are performed under the hood with this command:
- Any javascript files at the top-level of the repo are removed.
- The repo is [trusted](https://stackoverflow.com/a/71941707/15332803) to prevent git from [detecting it as unsafe](https://stackoverflow.com/questions/71901632/fatal-error-unsafe-repository-home-repon-is-owned-by-someone-else) and aborting submodule updates
- Submodules are updated (This is currently being tested to guarantee changes are actually registered)
- The javascript files in each submodule are copied to the top-level of the directory

<!-- 
TODO: document this somewhere on the README.
https://stackoverflow.com/questions/18136918/how-to-get-current-relative-directory-of-your-makefile
-->
