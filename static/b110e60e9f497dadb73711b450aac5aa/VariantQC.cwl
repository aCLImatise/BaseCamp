class: CommandLineTool
id: VariantQC.cwl
inputs:
- id: in_in
  doc: Input variant list in VCF format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_ignore_filter
  doc: "Ignore filter entries, i.e. consider variants that did not pass filters.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -ignore_filter
- id: in_out
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_txt
  doc: "Writes TXT format instead of qcML.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -txt
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
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- VariantQC
