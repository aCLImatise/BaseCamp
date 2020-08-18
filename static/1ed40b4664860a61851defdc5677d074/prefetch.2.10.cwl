class: CommandLineTool
id: ../../../prefetch.2.10.7.cwl
inputs:
- id: type
  doc: 'Specify file type to download. Default: sra'
  type: File
  inputBinding:
    prefix: --type
- id: min_size
  doc: Minimum file size to download in KB (inclusive).
  type: long
  inputBinding:
    prefix: --min-size
- id: max_size
  doc: 'Maximum file size to download in KB (exclusive). Default: 20G'
  type: long
  inputBinding:
    prefix: --max-size
- id: force
  doc: 'Force object download - one of: no, yes, all, ALL. no [default]: skip download
    if the object if found and complete; yes: download it even if it is found and
    is complete; all: ignore lock files (stale locks or it is being downloaded by
    another process - use at your own risk!); ALL: ignore lock files, restart download
    from beginning'
  type: string
  inputBinding:
    prefix: --force
- id: progress
  doc: Show progress
  type: boolean
  inputBinding:
    prefix: --progress
- id: resume
  doc: 'Resume partial downloads - one of: no, yes [default]'
  type: string
  inputBinding:
    prefix: --resume
- id: verify
  doc: 'Verify after download - one of: no, yes [default]'
  type: string
  inputBinding:
    prefix: --verify
- id: check_all
  doc: Double-check all refseqs
  type: boolean
  inputBinding:
    prefix: --check-all
- id: output_file
  doc: Write file to <file> when downloading single file
  type: File
  inputBinding:
    prefix: --output-file
- id: output_directory
  doc: Save files to <directory>/
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: log_level
  doc: Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug)
    or (0-6) Current/default is warn
  type: string
  inputBinding:
    prefix: --log-level
- id: option_file
  doc: Read more options and parameters from the file.
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- prefetch.2.10.7
