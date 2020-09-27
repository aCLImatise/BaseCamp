class: CommandLineTool
id: PretextMap.avx2.cwl
inputs:
- id: in_sort_order
  doc: "({descend}, ascend)\n--mapq {10}\n--filterInclude \"seq_ [, seq_]*\"\n--filterExclude\
    \ \"seq_ [, seq_]*\")"
  type: boolean
  inputBinding:
    prefix: --sortorder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PretextMap.avx2
