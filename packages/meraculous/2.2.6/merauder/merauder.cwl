class: CommandLineTool
id: ../../../merauder.cwl
inputs:
- id: in_aggressive_closures
  doc: Aggressive closures
  type: boolean
  inputBinding:
    prefix: -A
- id: in_contig_fasta_file
  doc: '*                   Contig FASTA file'
  type: File
  inputBinding:
    prefix: -c
- id: in_minimum_depth_default
  doc: Minimum depth (default 2)
  type: long
  inputBinding:
    prefix: -D
- id: in_gap_data_file
  doc: '*                   Gap data file'
  type: File
  inputBinding:
    prefix: -g
- id: in_maximum_insert_size
  doc: Maximum insert size
  type: long
  inputBinding:
    prefix: -i
- id: in_mer_size
  doc: Mer size
  type: long
  inputBinding:
    prefix: -m
- id: in_polymorphic_mode
  doc: Polymorphic mode
  type: boolean
  inputBinding:
    prefix: -P
- id: in_quality_offset_default
  doc: Quality offset (default 33)
  type: long
  inputBinding:
    prefix: -Q
- id: in_exclude_repeats
  doc: Exclude repeats
  type: string
  inputBinding:
    prefix: -R
- id: in_scaffold_report_file
  doc: '*                   Scaffold report file'
  type: File
  inputBinding:
    prefix: -s
- id: in_verbose_mode
  doc: Verbose mode
  type: boolean
  inputBinding:
    prefix: -V
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- merauder
