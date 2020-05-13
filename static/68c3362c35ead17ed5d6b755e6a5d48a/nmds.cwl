class: CommandLineTool
id: nmds.py.cwl
inputs:
- id: input_path
  doc: path to the input distance matrix file(s) (i.e., the output from beta_diversity.py).
    Is a directory for batch processing and a filename for a single file operation.
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: output path. directory for batch processing, filename for single file operation
    [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
outputs: []
cwlVersion: v1.1
baseCommand:
- nmds.py
