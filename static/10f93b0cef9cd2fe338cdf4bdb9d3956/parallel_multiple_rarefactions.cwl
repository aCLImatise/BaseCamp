class: CommandLineTool
id: parallel_multiple_rarefactions.py.cwl
inputs:
- id: input_path
  doc: input filepath, (the otu table) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_path
- id: output_path
  doc: write output rarefied otu tables here makes dir if it doesn't exist [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_path
- id: min
  doc: min seqs/sample [REQUIRED]
  type: long
  inputBinding:
    prefix: --min
- id: max
  doc: max seqs/sample (inclusive) [REQUIRED]
  type: long
  inputBinding:
    prefix: --max
outputs: []
cwlVersion: v1.1
baseCommand:
- parallel_multiple_rarefactions.py
