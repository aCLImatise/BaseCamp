class: CommandLineTool
id: minirmd.cwl
inputs:
- id: in_file
  doc: file
  type: File?
  inputBinding:
    prefix: -i
- id: in_file_paired_end
  doc: file, if paired end
  type: File?
  inputBinding:
    prefix: -f
- id: in_output_file
  doc: output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_of_allowed_mismatch
  doc: of allowed mismatch
  type: long?
  inputBinding:
    prefix: -d
- id: in_file_store_values
  doc: file to store values of k
  type: File?
  inputBinding:
    prefix: -k
- id: in_duplicates_reversecomplement_strand
  doc: duplicates on reverse-complement strand
  type: string?
  inputBinding:
    prefix: -r
- id: in_number_of_threads
  doc: number of threads
  type: long?
  inputBinding:
    prefix: -t
- id: in_help_message
  doc: help message
  type: string?
  inputBinding:
    prefix: -h
- id: in_parameters
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/minirmd:1.1--he513fc3_0
cwlVersion: v1.1
baseCommand:
- minirmd
