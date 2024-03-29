class: CommandLineTool
id: CnvFilterAnnotations.cwl
inputs:
- id: in_in
  doc: Input structural variant list in BEDPE format.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output structural variant list in BEDPE format.
  type: File?
  inputBinding:
    prefix: -out
- id: in_filters
  doc: Filter definition file.
  type: File?
  inputBinding:
    prefix: -filters
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2021_03--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- CnvFilterAnnotations
