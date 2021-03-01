class: CommandLineTool
id: parallel_all_against_all_blastp.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -p
- id: in_output_filename_blast
  doc: output filename for blast results [blast_results]
  type: File?
  inputBinding:
    prefix: -o
- id: in_makeblastdb_executable
  doc: makeblastdb executable [makeblastdb]
  type: string?
  inputBinding:
    prefix: -m
- id: in_blastp_executable
  doc: blastp executable [blastp]
  type: string?
  inputBinding:
    prefix: -b
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_file_dot_faa
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_blast
  doc: output filename for blast results [blast_results]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_blast)
hints: []
cwlVersion: v1.1
baseCommand:
- parallel_all_against_all_blastp
