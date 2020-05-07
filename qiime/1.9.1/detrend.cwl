class: CommandLineTool
id: detrend.py.cwl
inputs:
- id: input_fp
  doc: Path to read PCoA/PCA/ordination table [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- detrend.py
