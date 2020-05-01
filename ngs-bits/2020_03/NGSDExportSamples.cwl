#!/usr/bin/env cwl-runner

baseCommand:
- NGSDExportSamples
class: CommandLineTool
cwlVersion: v1.0
id: ngsdexportsamples
inputs:
- doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Sample name filter (substring match). Default value: ''"
  id: sample
  inputBinding:
    prefix: -sample
  type: string
- doc: "Species filter. Default value: ''"
  id: species
  inputBinding:
    prefix: -species
  type: string
- doc: "If set, processed samples with 'bad' quality are excluded. Default value:\
    \ 'false'"
  id: no_bad_samples
  inputBinding:
    prefix: -no_bad_samples
  type: boolean
- doc: "If set, tumor samples are excluded. Default value: 'false'"
  id: no_tumor
  inputBinding:
    prefix: -no_tumor
  type: boolean
- doc: "If set, FFPE samples are excluded. Default value: 'false'"
  id: no_ff_pe
  inputBinding:
    prefix: -no_ffpe
  type: boolean
- doc: "If set, processed samples that were merged into another sample are included.\
    \ Default value: 'false'"
  id: with_merged
  inputBinding:
    prefix: -with_merged
  type: boolean
- doc: "Project name filter. Default value: ''"
  id: project
  inputBinding:
    prefix: -project
  type: string
- doc: "Processing system name filter (short name). Default value: ''"
  id: system
  inputBinding:
    prefix: -system
  type: string
- doc: "Sequencing run name filter. Default value: ''"
  id: run
  inputBinding:
    prefix: -run
  type: string
- doc: "Only show samples where the analysis of the run is finished. Default value:\
    \ 'false'"
  id: run_finished
  inputBinding:
    prefix: -run_finished
  type: boolean
- doc: "Sequencing run device name filter. Default value: ''"
  id: run_device
  inputBinding:
    prefix: -run_device
  type: string
- doc: "If set, sequencing runs with 'bad' quality are excluded. Default value: 'false'"
  id: no_bad_runs
  inputBinding:
    prefix: -no_bad_runs
  type: boolean
- doc: "If set, QC columns are added to output. Default value: 'false'"
  id: add_qc
  inputBinding:
    prefix: -add_qc
  type: boolean
- doc: "If set, diagnostic outcome columns are added to output. Default value: 'false'"
  id: add_outcome
  inputBinding:
    prefix: -add_outcome
  type: boolean
- doc: "If set, disease details columns are added to output. Default value: 'false'"
  id: add_disease_details
  inputBinding:
    prefix: -add_disease_details
  type: boolean
- doc: "Checks if the sample folder is present at the defaults location in the 'projects_folder'\
    \ (as defined in the 'settings.ini' file). Default value: 'false'"
  id: add_path
  inputBinding:
    prefix: -add_path
  type: boolean
- doc: "Adds a column with report configuration information (exists/has_small_variants/has_cnvs).\
    \ Default value: 'false'"
  id: add_report_config
  inputBinding:
    prefix: -add_report_config
  type: boolean
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
