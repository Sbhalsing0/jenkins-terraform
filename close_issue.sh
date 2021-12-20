#!/bin/bash

gh auth login --with-token < secret.txt
data=$(gh issue list | awk '{print $1}' | head -n1)
gh issue close $data
