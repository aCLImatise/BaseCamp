class: CommandLineTool
id: SampleDiff.cwl
inputs:
- id: in_in_one
  doc: Input variant list in GSvar format.
  type: File?
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: Input variant list in GSvar format.
  type: File?
  inputBinding:
    prefix: -in2
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_window
  doc: "Window to consider around indel positions to compensate for differing alignments.\n\
    Default value: '100'"
  type: long?
  inputBinding:
    prefix: -window
- id: in_nei
  doc: "Allow non-exact indel matches. If set, all indels in the window are considered\
    \ matches.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -nei
- id: in_sm
  doc: "Also show matches. If unset, matching variants are not printed.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -sm
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- SampleDiff
