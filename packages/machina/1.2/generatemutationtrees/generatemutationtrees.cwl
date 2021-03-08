class: CommandLineTool
id: generatemutationtrees.cwl
inputs:
- id: in_output_canonical_clone
  doc: Output canonical clone trees
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_maximum_number_enumerate
  doc: 'Maximum number of mutation trees to enumerate (default: -1, unlimited)'
  type: long?
  inputBinding:
    prefix: -l
- id: in_output_directory
  doc: Output directory
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: 'Number of threads (default: 1)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_tl
  doc: "Time limit in seconds (default: -1, unlimited)\n"
  type: long?
  inputBinding:
    prefix: -tl
- id: in_frequencies
  doc: Frequencies
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/machina:1.2--h176a8bc_1
cwlVersion: v1.1
baseCommand:
- generatemutationtrees
