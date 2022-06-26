# cfuen/userscripts
My userscripts for [Min](https://github.com/minbrowser/min)

### Makefile-based workflow

There's a setup step you must do before sudo make spill'ing

**Option A: Become the repo owner**

*This may have security implications, so refer to your security person first.*
```bash
sudo chown -R <username>:<username> /home/<user>/.config/min/userscripts
# example: sudo chown -R cfuen:cfuen /home/cfuen/.config/min/userscripts
```

**Option B: Trust the git repo**
```bash
git config --global --add safe.directory /home/<user>/.config/min/userscripts
# example: git config --global --add safe.directory /home/cfuen/.config/Min/userscripts
```

Otherwise, you will get this error:
```bash
fatal: unsafe repository ('/home/<user>/.config/Min/userscripts' is owned by someone else)
```
