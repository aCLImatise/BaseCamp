class: CommandLineTool
id: multiqc.cwl
inputs:
- id: force
  doc: Overwrite any existing reports
  type: boolean
  inputBinding:
    prefix: --force
- id: dirs
  doc: Prepend directory to sample names
  type: boolean
  inputBinding:
    prefix: --dirs
- id: dirs_depth
  doc: Prepend [INT] directories to sample names. Negative number to take from start
    of path.
  type: long
  inputBinding:
    prefix: --dirs-depth
- id: full_names
  doc: Do not clean the sample names (leave as full file name)
  type: boolean
  inputBinding:
    prefix: --fullnames
- id: title
  doc: Report title. Printed as page header, used for filename if not otherwise specified.
  type: string
  inputBinding:
    prefix: --title
- id: comment
  doc: Custom comment, will be printed at the top of the report.
  type: string
  inputBinding:
    prefix: --comment
- id: filename
  doc: Report filename. Use 'stdout' to print to standard out.
  type: string
  inputBinding:
    prefix: --filename
- id: outdir
  doc: Create report in the specified output directory.
  type: string
  inputBinding:
    prefix: --outdir
- id: template
  doc: '[default|default_dev|geo|sections|simple] Report template to use.'
  type: boolean
  inputBinding:
    prefix: --template
- id: tag
  doc: Use only modules which tagged with this keyword, eg. RNA
  type: string
  inputBinding:
    prefix: --tag
- id: view_tags
  doc: View the available tags and which modules they load
  type: boolean
  inputBinding:
    prefix: --view-tags
- id: ignore
  doc: Ignore analysis files (glob expression)
  type: string
  inputBinding:
    prefix: --ignore
- id: ignore_samples
  doc: Ignore sample names (glob expression)
  type: string
  inputBinding:
    prefix: --ignore-samples
- id: ignore_symlinks
  doc: Ignore symlinked directories and files
  type: boolean
  inputBinding:
    prefix: --ignore-symlinks
- id: sample_names
  doc: File containing alternative sample names
  type: File
  inputBinding:
    prefix: --sample-names
- id: file_list
  doc: Supply a file containing a list of file paths to be searched, one per row
  type: boolean
  inputBinding:
    prefix: --file-list
- id: exclude
  doc: '[module name]     Do not use this module. Can specify multiple times.'
  type: boolean
  inputBinding:
    prefix: --exclude
- id: module
  doc: '[module name]      Use only this module. Can specify multiple times.'
  type: boolean
  inputBinding:
    prefix: --module
- id: data_dir
  doc: Force the parsed data directory to be created.
  type: boolean
  inputBinding:
    prefix: --data-dir
- id: no_data_dir
  doc: Prevent the parsed data directory from being created.
  type: boolean
  inputBinding:
    prefix: --no-data-dir
- id: data_format
  doc: '[tsv|json|yaml] Output parsed data in a different format. Default: tsv'
  type: boolean
  inputBinding:
    prefix: --data-format
- id: zip_data_dir
  doc: Compress the data directory.
  type: boolean
  inputBinding:
    prefix: --zip-data-dir
- id: export
  doc: Export plots as static images in addition to the report
  type: boolean
  inputBinding:
    prefix: --export
- id: flat
  doc: Use only flat plots (static images)
  type: boolean
  inputBinding:
    prefix: --flat
- id: interactive
  doc: Use only interactive plots (HighCharts Javascript)
  type: boolean
  inputBinding:
    prefix: --interactive
- id: lint
  doc: Use strict linting (validation) to help code development
  type: boolean
  inputBinding:
    prefix: --lint
- id: pdf
  doc: Creates PDF report with 'simple' template. Requires Pandoc to be installed.
  type: boolean
  inputBinding:
    prefix: --pdf
- id: no_mega_qc_upload
  doc: Don't upload generated report to MegaQC, even if MegaQC options are found
  type: boolean
  inputBinding:
    prefix: --no-megaqc-upload
- id: config
  doc: Specific config file to load, after those in MultiQC dir / home dir / working
    dir.
  type: File
  inputBinding:
    prefix: --config
- id: cl_config
  doc: Specify MultiQC config YAML on the command line
  type: string
  inputBinding:
    prefix: --cl-config
- id: verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Only show log warnings
  type: boolean
  inputBinding:
    prefix: --quiet
- id: no_ansi
  doc: Disable coloured log output
  type: boolean
  inputBinding:
    prefix: --no-ansi
outputs: []
cwlVersion: v1.1
baseCommand:
- multiqc
