#!/usr/bin/env cwl-runner

baseCommand:
- bseqc2
class: CommandLineTool
cwlVersion: v1.0
id: bseqc2
inputs:
- doc: '[ --infile ] arg               Input BAM file.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --outfile ] arg              Output statistics.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --reference ] arg            Reference FASTA file. This option is  required.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --length ] arg (=150)        Read length. Length of the query sequence  in
    the BAM file may be shorter than the  read length, but the read length should  ensure
    the longest mapping. Default: 150.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --numreads ] arg (=20000000) Number of reads. First `n` reads will be  examined.
    Be aware of extremely low CpG  methylation levels when chrM is the first  chromosome.
    Default: 20000000.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --rscript ] arg              Rscript for mbias plot. Default:  `$bindir/bseqc2mbiasplot.R`.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
