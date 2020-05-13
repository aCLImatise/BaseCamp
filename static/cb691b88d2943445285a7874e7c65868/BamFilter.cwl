class: CommandLineTool
id: BamFilter.cwl
inputs:
- id: in
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output BAM file.
  type: File
  inputBinding:
    prefix: -out
- id: min_mq
  doc: "Minimum mapping quality. Default value: '30'"
  type: long
  inputBinding:
    prefix: -minMQ
- id: max_mm
  doc: "Maximum number of mismatches in aligned read, -1 to disable. Default value:\
    \ '4'"
  type: long
  inputBinding:
    prefix: -maxMM
- id: max_gap
  doc: "Maximum number of gaps (indels) in aligned read, -1 to disable. Default value:\
    \ '1'"
  type: long
  inputBinding:
    prefix: -maxGap
- id: mind_up
  doc: "Minimum number of duplicates. Default value: '0'"
  type: long
  inputBinding:
    prefix: -minDup
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- BamFilter
