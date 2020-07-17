class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bp_seqpart.pl.cwl
inputs:
- id: files_create_partitioning
  doc: of files to create through partitioning
  type: string
  inputBinding:
    prefix: -n
- id: help_message
  doc: help message
  type: string
  inputBinding:
    prefix: -h
- id: fasta_file_names
  doc: for all FASTA file names output, files are of the form <outdir>/<prefix>#.<format>
  type: string
  inputBinding:
    prefix: -p
- id: files_defaults_fasta
  doc: of the files, defaults to FASTA but you can specify anything supported by SeqIO
    from BioPerl
  type: string
  inputBinding:
    prefix: -f
- id: directory_where_dump
  doc: directory where to dump the split sequence files
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- bp_seqpart.pl
