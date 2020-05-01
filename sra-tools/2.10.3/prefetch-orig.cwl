#!/usr/bin/env cwl-runner

baseCommand:
- prefetch-orig
class: CommandLineTool
cwlVersion: v1.0
id: prefetch-orig
inputs:
- doc: 'Specify file type to download. Default: sra '
  id: type
  inputBinding:
    prefix: --type
  type: boolean
- doc: 'Transport: one of: fasp; http; both. (fasp  only; http only; first try fasp
    (ascp), use  http if cannot download using fasp).  Default: both '
  id: transport
  inputBinding:
    prefix: --transport
  type: string
- doc: 'Location of data '
  id: location
  inputBinding:
    prefix: --location
  type: boolean
- doc: 'Minimum file size to download in KB  (inclusive). '
  id: min_size
  inputBinding:
    prefix: --min-size
  type: long
- doc: 'Maximum file size to download in KB  (exclusive). Default: 20G '
  id: max_size
  inputBinding:
    prefix: --max-size
  type: long
- doc: 'Force object download one of: no, yes,  all. no [default]: skip download if
    the  object if found and complete; yes: download  it even if it is found and is
    complete; all:  ignore lock files (stale locks or it is  being downloaded by another
    process: use at  your own risk!) '
  id: force
  inputBinding:
    prefix: --force
  type: string
- doc: 'Time period in minutes to display download  progress (0: no progress), default:
    1 '
  id: progress
  inputBinding:
    prefix: --progress
  type: string
- doc: "Don't download QUALITY column "
  id: eliminate_quals
  inputBinding:
    prefix: --eliminate-quals
  type: boolean
- doc: 'Double-check all refseqs '
  id: check_all
  inputBinding:
    prefix: --check-all
  type: boolean
- doc: 'Kart prefetch order when downloading  kart: one of: kart, size. (in kart order,
    by  file size: smallest first), default: size '
  id: order
  inputBinding:
    prefix: --order
  type: string
- doc: 'Kart rows to download (default all). row  list should be ordered '
  id: rows
  inputBinding:
    prefix: --rows
  type: string
- doc: 'PATH to jwt cart file '
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: 'PATH to ngc file '
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: 'To read kart file '
  id: cart
  inputBinding:
    prefix: --cart
  type: boolean
- doc: '<ascp-binary|private-key-file>  Path to ascp program and  private key file
    (asperaweb_id_dsa.putty) '
  id: ascp_path
  inputBinding:
    prefix: --ascp-path
  type: boolean
- doc: 'Arbitrary options to pass to ascp command  line '
  id: ascp_options
  inputBinding:
    prefix: --ascp-options
  type: string
- doc: 'Write file to FILE when downloading  single file '
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: 'Save files to DIRECTORY/ '
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: Directory
- doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Turn off all status messages for the  program. Negated by verbose. '
  id: quiet
  inputBinding:
    prefix: --quiet
  type: boolean
- doc: 'Read more options and parameters from the  file. '
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
