class: CommandLineTool
id: SampleDiff.cwl
inputs:
- id: in1
  doc: Input variant list in GSvar format.
  type: File
  inputBinding:
    prefix: -in1
- id: in2
  doc: Input variant list in GSvar format.
  type: File
  inputBinding:
    prefix: -in2
- id: out
  doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: window
  doc: "Window to consider around indel positions to compensate for differing alignments.\
    \ Default value: '100'"
  type: long
  inputBinding:
    prefix: -window
- id: nei
  doc: "Allow non-exact indel matches. If set, all indels in the window are considered\
    \ matches. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -nei
- id: sm
  doc: "Also show matches. If unset, matching variants are not printed. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -sm
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
- SampleDiff
