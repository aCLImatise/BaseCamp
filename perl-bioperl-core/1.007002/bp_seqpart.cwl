class: CommandLineTool
id: bp_seqpart.pl.cwl
inputs:
- id: n
  doc: of files to create through partitioning
  type: string
  inputBinding:
    prefix: -n
- id: h
  doc: help message
  type: string
  inputBinding:
    prefix: -h
- id: p
  doc: for all FASTA file names output, files are of the form <outdir>/<prefix>#.<format>
  type: string
  inputBinding:
    prefix: -p
- id: f
  doc: of the files, defaults to FASTA but you can specify anything supported by SeqIO
    from BioPerl
  type: string
  inputBinding:
    prefix: -f
- id: o
  doc: directory where to dump the split sequence files
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqpart.pl
