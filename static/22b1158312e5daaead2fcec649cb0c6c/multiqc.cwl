class: CommandLineTool
id: multiqc.cwl
inputs:
- id: in_force
  doc: Overwrite any existing reports
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_dirs
  doc: Prepend directory to sample names
  type: boolean?
  inputBinding:
    prefix: --dirs
- id: in_dirs_depth
  doc: "Prepend [INT] directories to sample names.\nNegative number to take from start\
    \ of path."
  type: long?
  inputBinding:
    prefix: --dirs-depth
- id: in_full_names
  doc: "Do not clean the sample names (leave as full\nfile name)"
  type: boolean?
  inputBinding:
    prefix: --fullnames
- id: in_title
  doc: "Report title. Printed as page header, used\nfor filename if not otherwise\
    \ specified."
  type: File?
  inputBinding:
    prefix: --title
- id: in_comment
  doc: "Custom comment, will be printed at the top\nof the report."
  type: string?
  inputBinding:
    prefix: --comment
- id: in_filename
  doc: "Report filename. Use 'stdout' to print to\nstandard out."
  type: File?
  inputBinding:
    prefix: --filename
- id: in_outdir
  doc: Create report in the specified output
  type: string?
  inputBinding:
    prefix: --outdir
- id: in_tag
  doc: "Use only modules which tagged with this\nkeyword, eg. RNA"
  type: string?
  inputBinding:
    prefix: --tag
- id: in_view_tags
  doc: "View the available tags and which modules\nthey load"
  type: boolean?
  inputBinding:
    prefix: --view-tags
- id: in_ignore
  doc: Ignore analysis files (glob expression)
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_ignore_samples
  doc: Ignore sample names (glob expression)
  type: string?
  inputBinding:
    prefix: --ignore-samples
- id: in_ignore_symlinks
  doc: Ignore symlinked directories and files
  type: boolean?
  inputBinding:
    prefix: --ignore-symlinks
- id: in_sample_names
  doc: File containing alternative sample names
  type: File?
  inputBinding:
    prefix: --sample-names
- id: in_sample_filters
  doc: File containing show/hide patterns for the
  type: File?
  inputBinding:
    prefix: --sample-filters
- id: in_exclude
  doc: '[module name]     Do not use this module. Can specify multiple'
  type: boolean?
  inputBinding:
    prefix: --exclude
- id: in_export
  doc: "Export plots as static images in addition to\nthe report"
  type: boolean?
  inputBinding:
    prefix: --export
- id: in_flat
  doc: Use only flat plots (static images)
  type: boolean?
  inputBinding:
    prefix: --flat
- id: in_interactive
  doc: "Use only interactive plots (HighCharts\nJavascript)"
  type: boolean?
  inputBinding:
    prefix: --interactive
- id: in_lint
  doc: Use strict linting (validation) to help code
  type: boolean?
  inputBinding:
    prefix: --lint
- id: in_no_mega_qc_upload
  doc: "Don't upload generated report to MegaQC,\neven if MegaQC options are found"
  type: boolean?
  inputBinding:
    prefix: --no-megaqc-upload
- id: in_config
  doc: "Specific config file to load, after those in\nMultiQC dir / home dir / working\
    \ dir."
  type: File?
  inputBinding:
    prefix: --config
- id: in_cl_config
  doc: Specify MultiQC config YAML on the command
  type: string?
  inputBinding:
    prefix: --cl-config
- id: in_quiet
  doc: Only show log warnings
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_profile_runtime
  doc: "Add analysis of how long MultiQC takes to\nrun to the report"
  type: boolean?
  inputBinding:
    prefix: --profile-runtime
- id: in_no_ansi
  doc: Disable coloured log output
  type: boolean?
  inputBinding:
    prefix: --no-ansi
- id: in_report
  doc: -l, --file-list                 Supply a file containing a list of file
  type: string
  inputBinding:
    position: 0
- id: in_tsv
  doc: -z, --zip-data-dir              Compress the data directory.
  type: string
  inputBinding:
    position: 0
- id: in_development
  doc: --pdf                           Creates PDF report with 'simple' template.
  type: string
  inputBinding:
    position: 1
- id: in_line
  doc: -v, --verbose                   Increase output verbosity.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename
  doc: "Report filename. Use 'stdout' to print to\nstandard out."
  type: File?
  outputBinding:
    glob: $(inputs.in_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/multiqc:1.10--py_1
cwlVersion: v1.1
baseCommand:
- multiqc
