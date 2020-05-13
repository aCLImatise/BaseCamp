class: CommandLineTool
id: multiple_rarefactions.py.cwl
inputs:
- id: input_path
  doc: Input OTU table filepath. [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: Output directory. [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
- id: min
  doc: Minimum number of seqs/sample for rarefaction. [REQUIRED]
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: Maximum number of seqs/sample (inclusive) for rarefaction.  [REQUIRED]
  type: long
  inputBinding:
    prefix: --max
- id: step
  doc: Size of each steps between the min/max of seqs/sample (e.g. min, min+step...
    for level <= max). [REQUIRED]
  type: string
  inputBinding:
    prefix: --step
outputs: []
cwlVersion: v1.1
baseCommand:
- multiple_rarefactions.py
