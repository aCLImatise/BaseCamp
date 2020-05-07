class: CommandLineTool
id: bseqc2.cwl
inputs:
- id: i
  doc: '[ --infile ] arg               Input BAM file.'
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: '[ --outfile ] arg              Output statistics.'
  type: boolean
  inputBinding:
    prefix: -o
- id: r
  doc: '[ --reference ] arg            Reference FASTA file. This option is  required.'
  type: boolean
  inputBinding:
    prefix: -r
- id: l
  doc: '[ --length ] arg (=150)        Read length. Length of the query sequence  in
    the BAM file may be shorter than the  read length, but the read length should  ensure
    the longest mapping. Default: 150.'
  type: boolean
  inputBinding:
    prefix: -l
- id: n
  doc: '[ --numreads ] arg (=20000000) Number of reads. First `n` reads will be  examined.
    Be aware of extremely low CpG  methylation levels when chrM is the first  chromosome.
    Default: 20000000.'
  type: boolean
  inputBinding:
    prefix: -n
- id: s
  doc: '[ --rscript ] arg              Rscript for mbias plot. Default:  `$bindir/bseqc2mbiasplot.R`.'
  type: boolean
  inputBinding:
    prefix: -s
outputs: []
cwlVersion: v1.1
baseCommand:
- bseqc2
