class: CommandLineTool
id: NGSDExportCnvTrack.cwl
inputs:
- id: in_out
  doc: Output IGV file.
  type: File?
  inputBinding:
    prefix: -out
- id: in_system
  doc: "Processing system name filter (short name).\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -system
- id: in_min_dp
  doc: "Minimum depth of the processed sample.\nDefault value: '0'"
  type: double?
  inputBinding:
    prefix: -min_dp
- id: in_max_cn_vs
  doc: "Maximum number of CNVs per sample.\nDefault value: '0'"
  type: double?
  inputBinding:
    prefix: -max_cnvs
- id: in_min_af
  doc: "Minimum allele frequency of output CNV ranges.\nDefault value: '0.01'"
  type: double?
  inputBinding:
    prefix: -min_af
- id: in_caller_version
  doc: "Restrict output to callsets with this caller version.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -caller_version
- id: in_stats
  doc: "Statistics and logging output. If unset, writes to STDOUT\nDefault value:\
    \ ''"
  type: File?
  inputBinding:
    prefix: -stats
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
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
  doc: Output IGV file.
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDExportCnvTrack
