class: CommandLineTool
id: rascaf_wrapper.pl.cwl
inputs:
- id: b
  doc: ': bam file. Can use comma-separator to specify multiple alignment files[required]'
  type: string
  inputBinding:
    prefix: -b
- id: f
  doc: ': path to the raw assembly fasta file'
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: ': prefix of the output file (default: rascaf_scaffold)'
  type: string
  inputBinding:
    prefix: -o
- id: ms
  doc: ': minimum support for connecting two contigs(default: 2)'
  type: long
  inputBinding:
    prefix: -ms
- id: ml
  doc: ': minimum exonic length if no intron (default: 200)'
  type: long
  inputBinding:
    prefix: -ml
- id: k
  doc: ': the size of a kmer(<=32. default: 21)'
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- rascaf-wrapper.pl
