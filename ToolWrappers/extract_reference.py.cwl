class: CommandLineTool
id: extract_reference.py.cwl
inputs:
- id: in_input_strand_list
  doc: 'Strand summary file containing subset (default: None)'
  type: File
  inputBinding:
    prefix: --input_strand_list
- id: in_jobs
  doc: "Number of threads to use when processing data\n(default: 1)"
  type: long
  inputBinding:
    prefix: --jobs
- id: in_limit
  doc: 'Limit number of reads to process (default: None)'
  type: long
  inputBinding:
    prefix: --limit
- id: in_no_overwrite
  doc: "Whether to overwrite any output files (Default: --no-\noverwrite) (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --no-overwrite
- id: in_section
  doc: "Section to call (default: template)\n"
  type: string
  inputBinding:
    prefix: --section
- id: in_input_folder
  doc: Directory containing single-read fast5 files
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: Output fasta file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_reference.py
