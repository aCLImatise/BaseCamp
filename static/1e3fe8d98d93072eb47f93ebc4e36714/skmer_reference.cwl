class: CommandLineTool
id: skmer_reference.cwl
inputs:
- id: in_directory_library_defaultworkingdirectorylibrary
  doc: "Directory of output (reference) library. Default:\nworking_directory/library"
  type: Directory?
  inputBinding:
    prefix: -l
- id: in_output_distances_prefix
  doc: 'Output (distances) prefix. Default: ref-dist-mat'
  type: string?
  inputBinding:
    prefix: -o
- id: in_kmer_length_default
  doc: 'K-mer length [1-31]. Default: 31'
  type: long?
  inputBinding:
    prefix: -k
- id: in_sketch_size_default
  doc: 'Sketch size. Default: 10000000'
  type: long?
  inputBinding:
    prefix: -s
- id: in_base_error_rate
  doc: Base error rate. By default, the error rate is automatically
  type: string?
  inputBinding:
    prefix: -e
- id: in_max_number_use
  doc: "Max number of processors to use [1-8]. Default for this machine:\n8\n"
  type: long?
  inputBinding:
    prefix: -p
- id: in_t
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_estimated_dot
  doc: -t          Apply Jukes-Cantor transformation to distances. Output 5.0 if
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_library_defaultworkingdirectorylibrary
  doc: "Directory of output (reference) library. Default:\nworking_directory/library"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_library_defaultworkingdirectorylibrary)
hints: []
cwlVersion: v1.1
baseCommand:
- skmer
- reference
