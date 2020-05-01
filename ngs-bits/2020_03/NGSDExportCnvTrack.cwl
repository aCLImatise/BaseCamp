#!/usr/bin/env cwl-runner

baseCommand:
- NGSDExportCnvTrack
class: CommandLineTool
cwlVersion: v1.0
id: ngsdexportcnvtrack
inputs:
- doc: Output IGV file.
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Processing system name filter (short name). Default value: ''"
  id: system
  inputBinding:
    prefix: -system
  type: string
- doc: "Minimum depth of the processed sample. Default value: '0'"
  id: min_dp
  inputBinding:
    prefix: -min_dp
  type: double
- doc: "Maximum number of CNVs per sample. Default value: '0'"
  id: max_cn_vs
  inputBinding:
    prefix: -max_cnvs
  type: double
- doc: "Minimum allele frequency of output CNV ranges. Default value: '0.01'"
  id: min_af
  inputBinding:
    prefix: -min_af
  type: double
- doc: "Restrict output to callsets with this caller version. Default value: ''"
  id: caller_version
  inputBinding:
    prefix: -caller_version
  type: string
- doc: "Statistics and logging output. If unset, writes to STDOUT Default value: ''"
  id: stats
  inputBinding:
    prefix: -stats
  type: File
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
