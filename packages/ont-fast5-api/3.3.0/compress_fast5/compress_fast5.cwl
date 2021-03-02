class: CommandLineTool
id: compress_fast5.cwl
inputs:
- id: in_input_path
  doc: Folder containing single read fast5 files
  type: File?
  inputBinding:
    prefix: --input_path
- id: in_save_path
  doc: Folder to output multi read files to
  type: Directory?
  inputBinding:
    prefix: --save_path
- id: in_in_place
  doc: Replace the old files with new files in place
  type: boolean?
  inputBinding:
    prefix: --in_place
- id: in_compression
  doc: Target output compression type
  type: string?
  inputBinding:
    prefix: --compression
- id: in_sanitize
  doc: "Clean output files of optional groups and datasets\n(e.g. 'Analyses')"
  type: boolean?
  inputBinding:
    prefix: --sanitize
- id: in_threads
  doc: Maximum number of threads to use
  type: long?
  inputBinding:
    prefix: --threads
- id: in_recursive
  doc: "Search recursively through folders for single_read\nfast5 files"
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_ignore_symlinks
  doc: Ignore symlinks when searching recursively for fast5
  type: boolean?
  inputBinding:
    prefix: --ignore_symlinks
- id: in_files
  doc: -v, --version         show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_save_path
  doc: Folder to output multi read files to
  type: Directory?
  outputBinding:
    glob: $(inputs.in_save_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ont-fast5-api:3.3.0--py_0
cwlVersion: v1.1
baseCommand:
- compress_fast5
