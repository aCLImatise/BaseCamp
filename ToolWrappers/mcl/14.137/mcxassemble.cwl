class: CommandLineTool
id: mcxassemble.cwl
inputs:
- id: in_use_baseraw_basehdr
  doc: use base.raw, base.hdr, and optionally base.map
  type: string?
  inputBinding:
    prefix: -b
- id: in_hdr
  doc: read header file
  type: File?
  inputBinding:
    prefix: -hdr
- id: in_raw
  doc: read raw data file
  type: File?
  inputBinding:
    prefix: -raw
- id: in_read_single_data
  doc: read from single data file
  type: File?
  inputBinding:
    prefix: -i
- id: in_write_file_fname
  doc: write to file fname
  type: File?
  inputBinding:
    prefix: -o
- id: in_digits
  doc: precision to use in interchange format
  type: long?
  inputBinding:
    prefix: -digits
- id: in_xo
  doc: write to base.suf (default .sym)
  type: string?
  inputBinding:
    prefix: -xo
- id: in_write_binary
  doc: write result matrices in binary format
  type: boolean?
  inputBinding:
    prefix: --write-binary
- id: in_write_default_result
  doc: do not write default symmetrized result
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_map
  doc: apply row/col map in file
  type: File?
  inputBinding:
    prefix: -map
- id: in_cmap
  doc: apply col map in file
  type: File?
  inputBinding:
    prefix: -cmap
- id: in_rtag
  doc: apply row map in base.tag
  type: string?
  inputBinding:
    prefix: -rtag
- id: in_r_map
  doc: apply row map in base.cmap
  type: boolean?
  inputBinding:
    prefix: --rmap
- id: in_tag
  doc: apply row/col map in base.tag
  type: string?
  inputBinding:
    prefix: -tag
- id: in_ctag
  doc: apply col map in base.tag
  type: string?
  inputBinding:
    prefix: -ctag
- id: in_skw
  doc: write skew matrix to file
  type: File?
  inputBinding:
    prefix: -skw
- id: in_prm
  doc: write primary result to file
  type: File?
  inputBinding:
    prefix: -prm
- id: in_check_result_symmetry
  doc: check primary result symmetry by creating skew matrix
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_raw_tf
  doc: <func(arg)[, func(arg)]*> apply unary transformations to raw values
  type: boolean?
  inputBinding:
    prefix: -raw-tf
- id: in_prm_tf
  doc: <func(arg)[, func(arg)]*> apply unary transformations to primary matrix
  type: boolean?
  inputBinding:
    prefix: -prm-tf
- id: in_sym_tf
  doc: <func(arg)[, func(arg)]*> apply unary transformations to symmetrified matrix
  type: boolean?
  inputBinding:
    prefix: -sym-tf
- id: in_rv
  doc: action for repeated vectors
  type: long?
  inputBinding:
    prefix: -rv
- id: in_re
  doc: action for repeated entries
  type: long?
  inputBinding:
    prefix: -re
- id: in_ri
  doc: action for adding image with mirror
  type: long?
  inputBinding:
    prefix: -ri
- id: in_same_entries_matrix
  doc: same for entries and vectors and matrix
  type: long?
  inputBinding:
    prefix: -r
- id: in_quiet_re
  doc: do not warn for repeated entries
  type: boolean?
  inputBinding:
    prefix: --quiet-re
- id: in_quiet_rv
  doc: do not warn for repeated vectors
  type: boolean?
  inputBinding:
    prefix: --quiet-rv
- id: in_the_two_combined
  doc: the two above combined
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_help
  doc: print this help
  type: boolean?
  inputBinding:
    prefix: --help
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mcxassemble
