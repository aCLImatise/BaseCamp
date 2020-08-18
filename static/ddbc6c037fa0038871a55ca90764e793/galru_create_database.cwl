class: CommandLineTool
id: ../../../galru_create_database.cwl
inputs:
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: allow_missing_st
  doc: Use files with missing ST [False]
  type: boolean
  inputBinding:
    prefix: --allow_missing_st
- id: debug
  doc: 'Turn on debugging and save intermediate files (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: verbose
  doc: 'Turn on verbose output (default: False)'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    position: 0
- id: input_files
  doc: Input FASTA files (optionally gzipped)
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- galru_create_database
