class: CommandLineTool
id: ismap.py.cwl
inputs:
- id: in_reads
  doc: Paired end reads for analysing (can be gzipped)
  type: string[]
  inputBinding:
    prefix: --reads
- id: in_queries
  doc: "Multifasta file for query gene(s) (eg: insertion\nsequence) that will be mapped\
    \ to."
  type: string[]
  inputBinding:
    prefix: --queries
- id: in_reference
  doc: Reference genome for typing against in genbank format
  type: string[]
  inputBinding:
    prefix: --reference
- id: in_output_dir
  doc: "Location for all output files (default is current\ndirectory)."
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_log
  doc: "Prefix for log file. If not supplied, prefix will be\ncurrent date and time."
  type: File?
  inputBinding:
    prefix: --log
- id: in_help_all
  doc: Display extended help
  type: string?
  inputBinding:
    prefix: --help_all
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Location for all output files (default is current\ndirectory)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- ismap.py
