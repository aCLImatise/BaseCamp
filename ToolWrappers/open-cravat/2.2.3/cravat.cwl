class: CommandLineTool
id: cravat.cwl
inputs:
- id: in_annotators_to_run
  doc: annotators to run
  type: string[]
  inputBinding:
    prefix: -a
- id: in_annotators_to_exclude
  doc: annotators to exclude
  type: string[]
  inputBinding:
    prefix: -e
- id: in_name_cravat_run
  doc: name of cravat run
  type: string?
  inputBinding:
    prefix: -n
- id: in_directory_output_files
  doc: directory for output files
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_start_at
  doc: starts at given stage
  type: string?
  inputBinding:
    prefix: --startat
- id: in_end_at
  doc: ends after given stage.
  type: string?
  inputBinding:
    prefix: --endat
- id: in_skip
  doc: "[{converter,mapper,annotator,aggregator,postaggregator,reporter} ...]\nskips\
    \ given stage(s)."
  type: string?
  inputBinding:
    prefix: --skip
- id: in_path_conf_file
  doc: path to a conf file
  type: File?
  inputBinding:
    prefix: -c
- id: in_cs
  doc: configuration string
  type: string?
  inputBinding:
    prefix: --cs
- id: in_verbose
  doc: verbose
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_report_types_omitted
  doc: "[{text,excel} ...]\nreport types. If omitted, default one in cravat.yml is\n\
    used."
  type: string?
  inputBinding:
    prefix: -t
- id: in_lift_over
  doc: "reference genome of input. CRAVAT will lift over to\nhg38 if needed."
  type: string?
  inputBinding:
    prefix: --liftover
- id: in_deletes_existing_database
  doc: deletes the existing result database and creates a new
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_note
  doc: "note will be written to the run status file\n(.status.json)"
  type: File?
  inputBinding:
    prefix: --note
- id: in_mp
  doc: number of processes to use to run annotators
  type: long?
  inputBinding:
    prefix: --mp
- id: in_input_format
  doc: Force input format
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_temp_files
  doc: Leave temporary files after run is complete.
  type: boolean?
  inputBinding:
    prefix: --temp-files
- id: in_write_admin_db
  doc: Write job information to admin db after job completion
  type: boolean?
  inputBinding:
    prefix: --writeadmindb
- id: in_jobid
  doc: Job ID for server version
  type: string?
  inputBinding:
    prefix: --jobid
- id: in_separate_sample
  doc: Separate variant results by sample
  type: boolean?
  inputBinding:
    prefix: --separatesample
- id: in_primary_transcript
  doc: "[PRIMARY_TRANSCRIPT ...]\n\"mane\" for MANE transcripts as primary transcripts,\
    \ or\na path to a file of primary transcripts. MANE is\ndefault."
  type: boolean?
  inputBinding:
    prefix: --primary-transcript
- id: in_clean_run
  doc: "Deletes all previous output files for the job and\ngenerate new ones."
  type: boolean?
  inputBinding:
    prefix: --cleanrun
- id: in_do_not_change_status
  doc: Job status in status.json will not be changed
  type: boolean?
  inputBinding:
    prefix: --do-not-change-status
- id: in_module_option
  doc: "[MODULE_OPTION ...]\nModule-specific option in module_name.key=value\nsyntax.\
    \ For example, --module-option\nvcfreporter.type=separate"
  type: boolean?
  inputBinding:
    prefix: --module-option
- id: in_system_option
  doc: "[SYSTEM_OPTION ...]\nSystem option in key=value syntax. For example,\n--system-option\
    \ modules_dir=/home/user/open-\ncravat/modules"
  type: boolean?
  inputBinding:
    prefix: --system-option
- id: in_silent
  doc: Runs silently.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_concise_report
  doc: "Generate concise reports with default columns defined\nby each annotation\
    \ module"
  type: boolean?
  inputBinding:
    prefix: --concise-report
- id: in_inputs
  doc: "Input file(s). One or more variant files in a\nsupported format like VCF.\
    \ See the -i/--input-format\nflag for supported formats. In the special case where\n\
    you want to add annotations to an existing open-cravat\nanalysis, provide the\
    \ output sqlite database from the\nprevious run as input instead of a variant\
    \ input file."
  type: string
  inputBinding:
    position: 0
- id: in_one_dot
  doc: --newlog              deletes the existing log file and creates a new one.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_output_files
  doc: directory for output files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_output_files)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- cravat
