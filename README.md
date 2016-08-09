# Phyloscanner
Generating phylogenies between and within hosts at once, using mapped reads (bam files) as input.  
Dependencies: [samtools](http://www.htslib.org/), [pysam](https://github.com/pysam-developers/pysam), [biopython](http://biopython.org/wiki/Download), [mafft](http://mafft.cbrc.jp/alignment/software/) and [RAxML](http://sco.h-its.org/exelixis/web/software/raxml/index.html).  

<p align="center"><img src="InfoAndInputs/PhylotypesDiagram.jpg" alt="Phyloscanner" width=500" height="290"/></p>

Basic usage: e.g.
```bash
$ ./phyloscanner.py 0 1 MyBamFiles.txt MyRefFiles.txt --windows 1,300,200,500,...
```
1. The first argument is used to control read merging: within each host, reads differing by a number of bases equal to or less than this value are iteratively merged, merging the rarer read into the more common. A value of `0` turns off merging.
2. The second argument controls whether rare reads are discarded: after merging, reads with a count less than this value are discarded. A value of `1` means all reads are kept.
3. `MyBamFiles.txt` should be a plain text file listing the desired bam input files, one per line.
4. `MyRefFiles.txt` should be a plain text file listing the files containing the sequences to which the short reads were mapped in order to create the bam input files (the *references*), one per bam file, in the same order as within `MyBamFiles.txt`.
5. The `--windows` option is used to specify an even number of comma-separated positive integers: these are the coordinates of the windows to analyse, interpreted pairwise (i.e. the first two are the left and right edges of the first window, the second two are the left and right edges of the second window, ...) and with respect to the alignment of sequences in `MyRefFiles.txt` (which will be generated and put into a file called `RefsAln.fasta`).

Adding trivial change to test.
