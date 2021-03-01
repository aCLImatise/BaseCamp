class: CommandLineTool
id: PlasFlow.py.cwl
inputs:
- id: in_input
  doc: Input fasta file with sequences to classify (required)
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: Output file with classification results (required)
  type: File?
  inputBinding:
    prefix: --output
- id: in_threshold
  doc: Threshold for probability filtering (default=0.7)
  type: double?
  inputBinding:
    prefix: --threshold
- id: in_labels
  doc: Custom labels file
  type: File?
  inputBinding:
    prefix: --labels
- id: in_models
  doc: Custom models localization
  type: string?
  inputBinding:
    prefix: --models
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file with classification results (required)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- PlasFlow.py
