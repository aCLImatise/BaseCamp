class: CommandLineTool
id: deepac_strain_filter.cwl
inputs:
- id: in_potentials
  doc: Print pathogenic potential values in .fasta headers.
  type: boolean?
  inputBinding:
    prefix: --potentials
- id: in_output
  doc: Output file path [.fasta].
  type: File?
  inputBinding:
    prefix: --output
- id: in_std
  doc: Standard deviations of predictions if MC dropout used.
  type: string?
  inputBinding:
    prefix: --std
- id: in_precision
  doc: "Format pathogenic potentials to given precision\n[default=3].\n"
  type: long?
  inputBinding:
    prefix: --precision
- id: in_t
  doc: ''
  type: string?
  inputBinding:
    prefix: -t
- id: in_input
  doc: Input file path [.fasta].
  type: string
  inputBinding:
    position: 0
- id: in_predictions
  doc: Predictions in matching order [.npy].
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file path [.fasta].
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deepacstrain:0.2.1--py_0
cwlVersion: v1.1
baseCommand:
- deepac-strain
- filter
