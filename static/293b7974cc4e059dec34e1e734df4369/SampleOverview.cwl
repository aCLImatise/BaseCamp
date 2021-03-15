class: CommandLineTool
id: SampleOverview.cwl
inputs:
- id: in_in
  doc: Input variant lists in GSvar format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output variant list file in GSvar format.
  type: File?
  inputBinding:
    prefix: -out
- id: in_window
  doc: "Window to consider around indel positions to compensate for differing alignments.\n\
    Default value: '100'"
  type: long?
  inputBinding:
    prefix: -window
- id: in_add_cols
  doc: "Comma-separated list of input columns that shall be added to the output. By\
    \ default, all columns that are present in all input files.\nDefault value: '[auto]'"
  type: string?
  inputBinding:
    prefix: -add_cols
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
  doc: Output variant list file in GSvar format.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- SampleOverview
