class: CommandLineTool
id: check_compression.cwl
inputs:
- id: in_input_path
  doc: Path to Fast5 file or directory of Fast5 files
  type: File
  inputBinding:
    prefix: --input_path
- id: in_check_all_reads
  doc: "Check all reads in a file individually (default: check\nonly the first read)"
  type: boolean
  inputBinding:
    prefix: --check_all_reads
- id: in_recursive
  doc: Search recursively through folders for MultiRead fast5
  type: boolean
  inputBinding:
    prefix: --recursive
- id: in_files
  doc: --ignore_symlinks     Ignore symlinks when searching recursively for fast5
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- check_compression
