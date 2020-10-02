class: CommandLineTool
id: bp_seqpart.pl.cwl
inputs:
- id: in_files_create_partitioning
  doc: of files to create through partitioning
  type: long
  inputBinding:
    prefix: -n
- id: in_help_message
  doc: help message
  type: string
  inputBinding:
    prefix: -h
- id: in_fasta_file_names
  doc: for all FASTA file names output, files are of the form <outdir>/<prefix>#.<format>
  type: File
  inputBinding:
    prefix: -p
- id: in_files_defaults_fasta
  doc: of the files, defaults to FASTA but you can specify anything supported by SeqIO
    from BioPerl
  type: string
  inputBinding:
    prefix: -f
- id: in_directory_where_dump
  doc: directory where to dump the split sequence files
  type: Directory
  inputBinding:
    prefix: -o
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_help
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_where
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_create
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_dump
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_names
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_through
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 6
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fasta_file_names
  doc: for all FASTA file names output, files are of the form <outdir>/<prefix>#.<format>
  type: File
  outputBinding:
    glob: $(inputs.in_fasta_file_names)
cwlVersion: v1.1
baseCommand:
- bp_seqpart.pl
