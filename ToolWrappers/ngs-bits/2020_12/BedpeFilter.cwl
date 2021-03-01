class: CommandLineTool
id: BedpeFilter.cwl
inputs:
- id: in_in
  doc: "Input BEDPE file. If unset, reads from STDIN.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: "Output BEDPE file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_bed
  doc: "BED file that is used as ROI.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -bed
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
  doc: "Output BEDPE file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- BedpeFilter
