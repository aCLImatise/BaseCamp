class: CommandLineTool
id: ismap.py.cwl
inputs:
- id: reads
  doc: Paired end reads for analysing (can be gzipped)
  type: string[]
  inputBinding:
    prefix: --reads
- id: queries
  doc: 'Multifasta file for query gene(s) (eg: insertion sequence) that will be mapped
    to.'
  type: string[]
  inputBinding:
    prefix: --queries
- id: reference
  doc: Reference genome for typing against in genbank format
  type: string[]
  inputBinding:
    prefix: --reference
- id: output_dir
  doc: Location for all output files (default is current directory).
  type: string
  inputBinding:
    prefix: --output_dir
- id: log
  doc: Prefix for log file. If not supplied, prefix will be current date and time.
  type: string
  inputBinding:
    prefix: --log
- id: help_all
  doc: Display extended help
  type: string
  inputBinding:
    prefix: --help_all
outputs: []
cwlVersion: v1.1
baseCommand:
- ismap.py
