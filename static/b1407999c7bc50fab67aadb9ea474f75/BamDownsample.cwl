class: CommandLineTool
id: BamDownsample.cwl
inputs:
- id: in
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -in
- id: percentage
  doc: Percentage of reads to keep.
  type: long
  inputBinding:
    prefix: -percentage
- id: out
  doc: Output BAM file.
  type: File
  inputBinding:
    prefix: -out
- id: test
  doc: "Test mode: fix random number generator seed and write kept read names to STDOUT.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -test
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
- BamDownsample
