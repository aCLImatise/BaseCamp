class: CommandLineTool
id: iterative_cdhit.cwl
inputs:
- id: in_input_fasta_file
  doc: input FASTA file of protein sequences [_combined_files]
  type: File
  inputBinding:
    prefix: -m
- id: in_number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: in_number_of_isolates
  doc: number of isolates [1]
  type: long
  inputBinding:
    prefix: -n
- id: in_cdhit_output_filename
  doc: cd-hit output filename [_clustered]
  type: File
  inputBinding:
    prefix: -c
- id: in_output_filename_filtered
  doc: output filename for filtered sequences [_clustered_filtered.fa]
  type: File
  inputBinding:
    prefix: -f
- id: in_lower_bound_percentage
  doc: lower bound percentage identity [98.0]
  type: double
  inputBinding:
    prefix: -l
- id: in_upper_bound_percentage
  doc: upper bound percentage identity [99.0]
  type: double
  inputBinding:
    prefix: -u
- id: in_step_size_percentage
  doc: step size for percentage identity [0.5]
  type: double
  inputBinding:
    prefix: -s
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cdhit_output_filename
  doc: cd-hit output filename [_clustered]
  type: File
  outputBinding:
    glob: $(inputs.in_cdhit_output_filename)
- id: out_output_filename_filtered
  doc: output filename for filtered sequences [_clustered_filtered.fa]
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_filtered)
cwlVersion: v1.1
baseCommand:
- iterative_cdhit
