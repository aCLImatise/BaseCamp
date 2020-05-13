class: CommandLineTool
id: NGSDExportSamples.cwl
inputs:
- id: out
  doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: sample
  doc: "Sample name filter (substring match). Default value: ''"
  type: string
  inputBinding:
    prefix: -sample
- id: species
  doc: "Species filter. Default value: ''"
  type: string
  inputBinding:
    prefix: -species
- id: no_bad_samples
  doc: "If set, processed samples with 'bad' quality are excluded. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -no_bad_samples
- id: no_tumor
  doc: "If set, tumor samples are excluded. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_tumor
- id: no_ff_pe
  doc: "If set, FFPE samples are excluded. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_ffpe
- id: with_merged
  doc: "If set, processed samples that were merged into another sample are included.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -with_merged
- id: project
  doc: "Project name filter. Default value: ''"
  type: string
  inputBinding:
    prefix: -project
- id: system
  doc: "Processing system name filter (short name). Default value: ''"
  type: string
  inputBinding:
    prefix: -system
- id: run
  doc: "Sequencing run name filter. Default value: ''"
  type: string
  inputBinding:
    prefix: -run
- id: run_finished
  doc: "Only show samples where the analysis of the run is finished. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -run_finished
- id: run_device
  doc: "Sequencing run device name filter. Default value: ''"
  type: string
  inputBinding:
    prefix: -run_device
- id: no_bad_runs
  doc: "If set, sequencing runs with 'bad' quality are excluded. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_bad_runs
- id: add_qc
  doc: "If set, QC columns are added to output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_qc
- id: add_outcome
  doc: "If set, diagnostic outcome columns are added to output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_outcome
- id: add_disease_details
  doc: "If set, disease details columns are added to output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_disease_details
- id: add_path
  doc: "Checks if the sample folder is present at the defaults location in the 'projects_folder'\
    \ (as defined in the 'settings.ini' file). Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_path
- id: add_report_config
  doc: "Adds a column with report configuration information (exists/has_small_variants/has_cnvs).\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -add_report_config
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
- NGSDExportSamples
