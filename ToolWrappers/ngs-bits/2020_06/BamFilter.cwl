class: CommandLineTool
id: BamFilter.cwl
inputs:
- id: in_in
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output BAM file.
  type: File
  inputBinding:
    prefix: -out
- id: in_min_mq
  doc: "Minimum mapping quality.\nDefault value: '30'"
  type: long
  inputBinding:
    prefix: -minMQ
- id: in_max_mm
  doc: "Maximum number of mismatches in aligned read, -1 to disable.\nDefault value:\
    \ '4'"
  type: long
  inputBinding:
    prefix: -maxMM
- id: in_max_gap
  doc: "Maximum number of gaps (indels) in aligned read, -1 to disable.\nDefault value:\
    \ '1'"
  type: long
  inputBinding:
    prefix: -maxGap
- id: in_mind_up
  doc: "Minimum number of duplicates.\nDefault value: '0'"
  type: long
  inputBinding:
    prefix: -minDup
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output BAM file.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- BamFilter
