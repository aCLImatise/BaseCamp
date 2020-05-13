class: CommandLineTool
id: bcool.cwl
inputs:
- id: u
  doc: (MANDATORY) input fasta read files. Several read files must be concatenated
  type: string
  inputBinding:
    prefix: -u
- id: o
  doc: Path to store the results (Default = current directory)
  type: string
  inputBinding:
    prefix: -o
- id: t
  doc: Number of cores used (Default = 1)
  type: string
  inputBinding:
    prefix: -t
- id: k
  doc: k-mer size (Default = AUTO)
  type: string
  inputBinding:
    prefix: -k
- id: s
  doc: k-mers present strictly less than this number of times in the dataset will
    be discarded (Default = 2)
  type: long
  inputBinding:
    prefix: -s
- id: s
  doc: Unitig Coverage for cleaning (Default = AUTO)
  type: string
  inputBinding:
    prefix: -S
- id: m
  doc: (ADVANCED) Maximum number of corrected bases (Default = 10)
  type: string
  inputBinding:
    prefix: -m
- id: i
  doc: (ADVANCED) index one out of i anchors to reduce memory consumption (Default
    = 1)
  type: string
  inputBinding:
    prefix: -i
- id: n
  doc: (ADVANCED) Maximum occurence of an anchor (Default = 1), better correction
    for repetitive genome but slower
  type: long
  inputBinding:
    prefix: -n
- id: d
  doc: (ADVANCED) Print command lines
  type: string
  inputBinding:
    prefix: -d
outputs: []
cwlVersion: v1.1
baseCommand:
- bcool
