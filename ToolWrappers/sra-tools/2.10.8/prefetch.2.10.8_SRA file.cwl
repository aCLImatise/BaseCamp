class: CommandLineTool
id: prefetch.2.10.8_SRA file.cwl
inputs:
- id: in_type
  doc: 'Specify file type to download. Default: sra'
  type: File
  inputBinding:
    prefix: --type
- id: in_min_size
  doc: "Minimum file size to download in KB\n(inclusive)."
  type: long
  inputBinding:
    prefix: --min-size
- id: in_max_size
  doc: "Maximum file size to download in KB\n(exclusive). Default: 20G"
  type: long
  inputBinding:
    prefix: --max-size
- id: in_force
  doc: "Force object download - one of: no, yes,\nall, ALL. no [default]: skip download\
    \ if\nthe object if found and complete; yes:\ndownload it even if it is found\
    \ and is\ncomplete; all: ignore lock files (stale\nlocks or it is being downloaded\
    \ by\nanother process - use at your own\nrisk!); ALL: ignore lock files, restart\n\
    download from beginning"
  type: string
  inputBinding:
    prefix: --force
- id: in_progress
  doc: Show progress
  type: boolean
  inputBinding:
    prefix: --progress
- id: in_resume
  doc: "Resume partial downloads - one of: no, yes\n[default]"
  type: string
  inputBinding:
    prefix: --resume
- id: in_verify
  doc: "Verify after download - one of: no, yes\n[default]"
  type: string
  inputBinding:
    prefix: --verify
- id: in_check_all
  doc: Double-check all refseqs
  type: boolean
  inputBinding:
    prefix: --check-all
- id: in_output_file
  doc: "Write file to <file> when downloading\nsingle file"
  type: File
  inputBinding:
    prefix: --output-file
- id: in_output_directory
  doc: Save files to <directory>/
  type: Directory
  inputBinding:
    prefix: --output-directory
- id: in_ngc
  doc: <path> to ngc file
  type: File
  inputBinding:
    prefix: --ngc
- id: in_perm
  doc: <path> to permission file
  type: File
  inputBinding:
    prefix: --perm
- id: in_location
  doc: location in cloud
  type: string
  inputBinding:
    prefix: --location
- id: in_cart
  doc: <path> to cart file
  type: File
  inputBinding:
    prefix: --cart
- id: in_disable_multithreading
  doc: disable multithreading
  type: boolean
  inputBinding:
    prefix: --disable-multithreading
- id: in_log_level
  doc: "Logging level as number or enum string.\nOne of\n(fatal|sys|int|err|warn|info|debug)\
    \ or\n(0-6) Current/default is warn"
  type: long
  inputBinding:
    prefix: --log-level
- id: in_option_file
  doc: Read more options and parameters from the
  type: File
  inputBinding:
    prefix: --option-file
- id: in_file_dot
  doc: -h|--help                        print this message
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "Write file to <file> when downloading\nsingle file"
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_output_directory
  doc: Save files to <directory>/
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- prefetch.2.10.8
- SRA file
