class: CommandLineTool
id: bzgrep_files_grep.cwl
inputs:
- id: in_decompress
  doc: force decompression
  type: boolean?
  inputBinding:
    prefix: --decompress
- id: in_compress
  doc: force compression
  type: boolean?
  inputBinding:
    prefix: --compress
- id: in_keep
  doc: keep (don't delete) input files
  type: boolean?
  inputBinding:
    prefix: --keep
- id: in_force
  doc: overwrite existing output files
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_test
  doc: test compressed file integrity
  type: boolean?
  inputBinding:
    prefix: --test
- id: in_stdout
  doc: output to standard out
  type: boolean?
  inputBinding:
    prefix: --stdout
- id: in_quiet
  doc: suppress noncritical error messages
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: be verbose (a 2nd -v gives more)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_license
  doc: display software version & license
  type: boolean?
  inputBinding:
    prefix: --license
- id: in_small
  doc: use less memory (at most 2500k)
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_set_block_size
  doc: .. -9            set block size to 100k .. 900k
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_fast
  doc: alias for -1
  type: boolean?
  inputBinding:
    prefix: --fast
- id: in_best
  doc: alias for -9
  type: boolean?
  inputBinding:
    prefix: --best
- id: in_bzip_two
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_and
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_input
  doc: ''
  type: string?
  inputBinding:
    position: 3
- id: in_files
  doc: ''
  type: string?
  inputBinding:
    position: 4
- id: in_in
  doc: ''
  type: string?
  inputBinding:
    position: 5
- id: in_any
  doc: ''
  type: string?
  inputBinding:
    position: 6
- id: in_order
  doc: ''
  type: string?
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bzip2:1.0.8
cwlVersion: v1.1
baseCommand:
- bzgrep
- files
- grep
