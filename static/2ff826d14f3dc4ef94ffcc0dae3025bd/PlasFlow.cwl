class: CommandLineTool
id: PlasFlow.py.cwl
inputs:
- id: input
  doc: Input fasta file with sequences to classify (required)
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: Output file with classification results (required)
  type: string
  inputBinding:
    prefix: --output
- id: threshold
  doc: Threshold for probability filtering (default=0.7)
  type: string
  inputBinding:
    prefix: --threshold
- id: labels
  doc: Custom labels file
  type: string
  inputBinding:
    prefix: --labels
- id: models
  doc: Custom models localization
  type: string
  inputBinding:
    prefix: --models
outputs: []
cwlVersion: v1.1
baseCommand:
- PlasFlow.py
