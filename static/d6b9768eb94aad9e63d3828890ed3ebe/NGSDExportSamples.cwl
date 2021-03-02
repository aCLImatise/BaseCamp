class: CommandLineTool
id: NGSDExportSamples.cwl
inputs:
- id: in_out
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_sample
  doc: "Sample name filter (substring match).\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -sample
- id: in_species
  doc: "Species filter.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -species
- id: in_no_bad_samples
  doc: "If set, processed samples with 'bad' quality are excluded.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_bad_samples
- id: in_no_tumor
  doc: "If set, tumor samples are excluded.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_tumor
- id: in_no_ff_pe
  doc: "If set, FFPE samples are excluded.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_ffpe
- id: in_with_merged
  doc: "If set, processed samples that were merged into another sample are included.\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -with_merged
- id: in_project
  doc: "Project name filter.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -project
- id: in_system
  doc: "Processing system name filter (short name).\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -system
- id: in_run
  doc: "Sequencing run name filter.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -run
- id: in_run_finished
  doc: "Only show samples where the analysis of the run is finished.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -run_finished
- id: in_run_device
  doc: "Sequencing run device name filter.\nDefault value: ''"
  type: string?
  inputBinding:
    prefix: -run_device
- id: in_no_bad_runs
  doc: "If set, sequencing runs with 'bad' quality are excluded.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_bad_runs
- id: in_add_qc
  doc: "If set, QC columns are added to output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -add_qc
- id: in_add_outcome
  doc: "If set, diagnostic outcome columns are added to output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -add_outcome
- id: in_add_disease_details
  doc: "If set, disease details columns are added to output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -add_disease_details
- id: in_add_path
  doc: "Checks if the sample folder is present at the defaults location in the 'projects_folder'\
    \ (as defined in the 'settings.ini' file).\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -add_path
- id: in_add_report_config
  doc: "Adds a column with report configuration information (exists/has_small_variants/has_cnvs).\n\
    Default value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -add_report_config
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
  doc: "Output TSV file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- NGSDExportSamples
