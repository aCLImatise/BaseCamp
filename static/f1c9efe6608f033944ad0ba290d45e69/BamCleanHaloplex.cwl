class: CommandLineTool
id: BamCleanHaloplex.cwl
inputs:
- id: in
  doc: Input bam file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output bam file.
  type: File
  inputBinding:
    prefix: -out
- id: min_match
  doc: "Minimum number of CIGAR matches (M). Default value: '30'"
  type: long
  inputBinding:
    prefix: -min_match
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
- BamCleanHaloplex
