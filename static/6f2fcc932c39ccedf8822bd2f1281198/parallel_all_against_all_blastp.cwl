class: CommandLineTool
id: ../../../parallel_all_against_all_blastp.cwl
inputs:
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: output_filename_blast
  doc: output filename for blast results [blast_results]
  type: string
  inputBinding:
    prefix: -o
- id: makeblastdb_executable
  doc: makeblastdb executable [makeblastdb]
  type: string
  inputBinding:
    prefix: -m
- id: blastp_executable
  doc: blastp executable [blastp]
  type: string
  inputBinding:
    prefix: -b
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: file_dot_faa
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_all_against_all_blastp
