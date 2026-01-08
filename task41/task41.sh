#Write a shell script to find out disk use by /var/lib/jenkins and write the result to result.txt
#!/usr/bin/env bash
set -euo pipefail
set -x

du -sh /var/lib/jenkins > result.txt


