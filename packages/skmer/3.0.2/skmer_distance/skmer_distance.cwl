class: CommandLineTool
id: skmer_distance.cwl
inputs:
- id: in_output_distances_prefix
  doc: 'Output (distances) prefix. Default: ref-dist-mat'
  type: string
  inputBinding:
    prefix: -o
- id: in_apply_jukescantor_transformation
  doc: "Apply Jukes-Cantor transformation to distances. Output 5.0 if\nnot applicable"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_max_number_processors
  doc: "Max number of processors to use [1-8]. Default for this machine:\n8\n"
  type: long
  inputBinding:
    prefix: -p
- id: in_library
  doc: Directory of the input (processed) library
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- skmer
- distance
