class: CommandLineTool
id: NGSDExportCnvTrack.cwl
inputs:
- id: out
  doc: Output IGV file.
  type: File
  inputBinding:
    prefix: -out
- id: system
  doc: "Processing system name filter (short name). Default value: ''"
  type: string
  inputBinding:
    prefix: -system
- id: min_dp
  doc: "Minimum depth of the processed sample. Default value: '0'"
  type: double
  inputBinding:
    prefix: -min_dp
- id: max_cn_vs
  doc: "Maximum number of CNVs per sample. Default value: '0'"
  type: double
  inputBinding:
    prefix: -max_cnvs
- id: min_af
  doc: "Minimum allele frequency of output CNV ranges. Default value: '0.01'"
  type: double
  inputBinding:
    prefix: -min_af
- id: caller_version
  doc: "Restrict output to callsets with this caller version. Default value: ''"
  type: string
  inputBinding:
    prefix: -caller_version
- id: stats
  doc: "Statistics and logging output. If unset, writes to STDOUT Default value: ''"
  type: File
  inputBinding:
    prefix: -stats
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
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
- NGSDExportCnvTrack
