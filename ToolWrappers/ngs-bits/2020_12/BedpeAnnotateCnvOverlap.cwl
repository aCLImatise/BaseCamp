class: CommandLineTool
id: BedpeAnnotateCnvOverlap.cwl
inputs:
- id: in_in
  doc: Input SV file (in BEDPE format).
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output SV file (in BEDPE format).
  type: File?
  inputBinding:
    prefix: -out
- id: in_cnv
  doc: Input CNV file (in TSV format).
  type: File?
  inputBinding:
    prefix: -cnv
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
  doc: Output SV file (in BEDPE format).
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- BedpeAnnotateCnvOverlap
