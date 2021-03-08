class: CommandLineTool
id: cravat_report.cwl
inputs:
- id: in_report_types
  doc: "[{text,excel} ...]\nreport types"
  type: string?
  inputBinding:
    prefix: -t
- id: in_path_filter_file
  doc: Path to filter file
  type: File?
  inputBinding:
    prefix: -f
- id: in_name_filter_stored
  doc: Name of filter (stored in aggregator output)
  type: string?
  inputBinding:
    prefix: -F
- id: in_path_save_file
  doc: Path to save file
  type: File?
  inputBinding:
    prefix: -s
- id: in_path_conf_file
  doc: path to a conf file
  type: File?
  inputBinding:
    prefix: -c
- id: in_module_name
  doc: report module name
  type: string?
  inputBinding:
    prefix: --module-name
- id: in_no_gene_level_on_variant_level
  doc: "Use this option to prevent gene level result from\nbeing added to variant\
    \ level result."
  type: boolean?
  inputBinding:
    prefix: --nogenelevelonvariantlevel
- id: in_confs
  doc: Configuration string
  type: string?
  inputBinding:
    prefix: --confs
- id: in_input_files
  doc: Original input file path
  type: string[]
  inputBinding:
    prefix: --inputfiles
- id: in_separate_sample
  doc: Write each variant-sample pair on a separate line
  type: boolean?
  inputBinding:
    prefix: --separatesample
- id: in_directory_output_files
  doc: directory for output files
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_do_not_change_status
  doc: Job status in status.json will not be changed
  type: boolean?
  inputBinding:
    prefix: --do-not-change-status
- id: in_silent
  doc: Suppress output to STDOUT
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_system_option
  doc: "[SYSTEM_OPTION ...]\nSystem option in key=value syntax. For example,\n--system-option\
    \ modules_dir=/home/user/open-\ncravat/modules"
  type: boolean?
  inputBinding:
    prefix: --system-option
- id: in_module_option
  doc: "[MODULE_OPTION ...]\nModule-specific option in module_name.key=value\nsyntax.\
    \ For example, --module-option\nvcfreporter.type=separate"
  type: boolean?
  inputBinding:
    prefix: --module-option
- id: in_concise_report
  doc: "Generate concise report with default columns defined\nby annotation modules"
  type: boolean?
  inputBinding:
    prefix: --concise-report
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
- cravat-report
