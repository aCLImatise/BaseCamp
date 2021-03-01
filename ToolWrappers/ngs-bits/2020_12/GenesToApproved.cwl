class: CommandLineTool
id: GenesToApproved.cwl
inputs:
- id: in_in
  doc: "Input TXT file with one gene symbol per line. If unset, reads from STDIN.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output TXT file with approved gene symbols. If unset, writes to STDOUT.\n\
    Default value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_report_ambiguous
  doc: "Report all matching genes for ambiguous previous/synonymous symbols - instead\
    \ of an error.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -report_ambiguous
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
  doc: "Output TXT file with approved gene symbols. If unset, writes to STDOUT.\n\
    Default value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- GenesToApproved
