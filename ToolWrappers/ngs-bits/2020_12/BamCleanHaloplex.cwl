class: CommandLineTool
id: BamCleanHaloplex.cwl
inputs:
- id: in_in
  doc: Input BAM/CRAM file.
  type: File?
  inputBinding:
    prefix: -in
- id: in_out
  doc: Output BAM/CRAM file.
  type: File?
  inputBinding:
    prefix: -out
- id: in_min_match
  doc: "Minimum number of CIGAR matches (M).\nDefault value: '30'"
  type: long?
  inputBinding:
    prefix: -min_match
- id: in_ref
  doc: "Reference genome for CRAM support (mandatory if CRAM is used).\nDefault value:\
    \ ''"
  type: string?
  inputBinding:
    prefix: -ref
- id: in_write_cram
  doc: "Writes a CRAM file as output.\nDefault value: 'false'"
  type: File?
  inputBinding:
    prefix: -write_cram
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
  doc: Output BAM/CRAM file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_write_cram
  doc: "Writes a CRAM file as output.\nDefault value: 'false'"
  type: File?
  outputBinding:
    glob: $(inputs.in_write_cram)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- BamCleanHaloplex
