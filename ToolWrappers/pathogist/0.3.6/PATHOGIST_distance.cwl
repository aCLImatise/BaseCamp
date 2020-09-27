class: CommandLineTool
id: PATHOGIST_distance.cwl
inputs:
- id: in_bed
  doc: bed file of unwanted SNP positions in the genome
  type: File
  inputBinding:
    prefix: --bed
- id: in_calls_path
  doc: "path to file containing paths to signal calls (e.g.\nMLST calls, CNV calls,\
    \ etc)"
  type: string
  inputBinding:
    position: 0
- id: in_output_path
  doc: path to output tsv file
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PATHOGIST
- distance
