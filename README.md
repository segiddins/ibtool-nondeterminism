ibtool non-deterministically outputs compiled nibs

running `diff -r` between the different _storyboardc dirs demonstrates this

the text dump of the compiled .nib files is generated via https://github.com/segiddins/nibsqueeze/tree/segiddins/print-nib

you can run ./repro.sh to reproduce the issue
