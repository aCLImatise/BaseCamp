class: CommandLineTool
id: ../../../iterative_cdhit.cwl
inputs:
- id: input_fasta_file
  doc: input FASTA file of protein sequences [_combined_files]
  type: string
  inputBinding:
    prefix: -m
- id: number_of_threads
  doc: number of threads [1]
  type: long
  inputBinding:
    prefix: -p
- id: number_of_isolates
  doc: number of isolates [1]
  type: long
  inputBinding:
    prefix: -n
- id: cdhit_output_filename
  doc: cd-hit output filename [_clustered]
  type: string
  inputBinding:
    prefix: -c
- id: output_filename_filtered
  doc: output filename for filtered sequences [_clustered_filtered.fa]
  type: string
  inputBinding:
    prefix: -f
- id: lower_bound_percentage
  doc: lower bound percentage identity [98.0]
  type: double
  inputBinding:
    prefix: -l
- id: upper_bound_percentage
  doc: upper bound percentage identity [99.0]
  type: double
  inputBinding:
    prefix: -u
- id: step_size_percentage
  doc: step size for percentage identity [0.5]
  type: double
  inputBinding:
    prefix: -s
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- iterative_cdhit
