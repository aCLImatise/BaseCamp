#!/usr/bin/env cwl-runner

baseCommand:
- prefetch.2.10.3
class: CommandLineTool
cwlVersion: v1.0
id: prefetch.2.10.3
inputs:
- doc: 'Specify file type to download. Default: sra'
  id: type
  inputBinding:
    prefix: --type
  type: File
- doc: Minimum file size to download in KB (inclusive).
  id: min_size
  inputBinding:
    prefix: --min_size
  type: long
- doc: 'Maximum file size to download in KB (exclusive). Default: 20G'
  id: max_size
  inputBinding:
    prefix: --max_size
  type: long
- doc: 'Force object download one of: no, yes, all. no [default]: skip download if
    the object if found and complete; yes: download it even if it is found and is
    complete; all: ignore lock files (stale locks or it is being downloaded by another
    process: use at your own risk!)'
  id: force
  inputBinding:
    prefix: --force
  type: string
- doc: 'Time period in minutes to display download progress (0: no progress), default:
    1'
  id: progress
  inputBinding:
    prefix: --progress
  type: string
- doc: Double-check all refseqs
  id: check_all
  inputBinding:
    prefix: --check-all
  type: boolean
- doc: Write file to FILE when downloading single file
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: Save files to path/
  id: output_directory
  inputBinding:
    prefix: --output-directory
  type: File
- doc: <path> to ngc file
  id: ngc
  inputBinding:
    prefix: --ngc
  type: File
- doc: <path> to permission file
  id: perm
  inputBinding:
    prefix: --perm
  type: File
- doc: location in cloud
  id: location
  inputBinding:
    prefix: --location
  type: string
- doc: <path> to cart file
  id: cart
  inputBinding:
    prefix: --cart
  type: File
- doc: disable multithreading
  id: disable_multithreading
  inputBinding:
    prefix: --disable-multithreading
  type: boolean
- doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  id: log_level
  inputBinding:
    prefix: --log-level
  type: string
- doc: Read more options and parameters from the file.
  id: option_file
  inputBinding:
    prefix: --option-file
  type: File
