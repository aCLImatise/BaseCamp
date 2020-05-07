class: CommandLineTool
id: prefetch_orig.cwl
inputs:
- id: type
  doc: 'Specify file type to download. Default: sra '
  type: boolean
  inputBinding:
    prefix: --type
- id: transport
  doc: 'Transport: one of: fasp; http; both. (fasp  only; http only; first try fasp
    (ascp), use  http if cannot download using fasp).  Default: both '
  type: string
  inputBinding:
    prefix: --transport
- id: location
  doc: 'Location of data '
  type: boolean
  inputBinding:
    prefix: --location
- id: min_size
  doc: 'Minimum file size to download in KB  (inclusive). '
  type: long
  inputBinding:
    prefix: --min-size
- id: max_size
  doc: 'Maximum file size to download in KB  (exclusive). Default: 20G '
  type: long
  inputBinding:
    prefix: --max-size
- id: force
  doc: 'Force object download one of: no, yes,  all. no [default]: skip download if
    the  object if found and complete; yes: download  it even if it is found and is
    complete; all:  ignore lock files (stale locks or it is  being downloaded by another
    process: use at  your own risk!) '
  type: string
  inputBinding:
    prefix: --force
- id: progress
  doc: 'Time period in minutes to display download  progress (0: no progress), default:
    1 '
  type: string
  inputBinding:
    prefix: --progress
- id: eliminate_quals
  doc: "Don't download QUALITY column "
  type: boolean
  inputBinding:
    prefix: --eliminate-quals
- id: check_all
  doc: 'Double-check all refseqs '
  type: boolean
  inputBinding:
    prefix: --check-all
- id: order
  doc: 'Kart prefetch order when downloading  kart: one of: kart, size. (in kart order,
    by  file size: smallest first), default: size '
  type: string
  inputBinding:
    prefix: --order
- id: rows
  doc: 'Kart rows to download (default all). row  list should be ordered '
  type: string
  inputBinding:
    prefix: --rows
- id: perm
  doc: 'PATH to jwt cart file '
  type: File
  inputBinding:
    prefix: --perm
- id: ngc
  doc: 'PATH to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: cart
  doc: 'To read kart file '
  type: boolean
  inputBinding:
    prefix: --cart
- id: ascp_path
  doc: '<ascp-binary|private-key-file>  Path to ascp program and  private key file
    (asperaweb_id_dsa.putty) '
  type: boolean
  inputBinding:
    prefix: --ascp-path
- id: ascp_options
  doc: 'Arbitrary options to pass to ascp command  line '
  type: string
  inputBinding:
    prefix: --ascp-options
- id: output_file
  doc: 'Write file to FILE when downloading  single file '
  type: File
  inputBinding:
    prefix: --output-file
- id: output_directory
  doc: 'Save files to DIRECTORY/ '
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- prefetch-orig
