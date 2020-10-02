class: CommandLineTool
id: ncbi.py_tbl_transfer.cwl
inputs:
- id: in_oob_clip
  doc: "Out of bounds feature behavior. False: drop all\nfeatures that are completely\
    \ or partly out of bounds\nTrue: drop all features completely out of bounds but\n\
    truncate any features that are partly out of bounds"
  type: boolean
  inputBinding:
    prefix: --oob_clip
- id: in_tmp_dir
  doc: 'Base directory for temp files. [default: /tmp]'
  type: Directory
  inputBinding:
    prefix: --tmp_dir
- id: in_tmp_dir_keep
  doc: "Keep the tmp_dir if an exception occurs while running.\nDefault is to delete\
    \ all temp files at the end, even\nif there's a failure."
  type: boolean
  inputBinding:
    prefix: --tmp_dirKeep
- id: in_loglevel
  doc: 'Verboseness of output. [default: DEBUG]'
  type: string
  inputBinding:
    prefix: --loglevel
- id: in_ref_fast_a
  doc: Input sequence of reference genome
  type: string
  inputBinding:
    position: 0
- id: in_ref_tbl
  doc: Input reference annotations (NCBI TBL format)
  type: string
  inputBinding:
    position: 1
- id: in_alt_fast_a
  doc: Input sequence of new genome
  type: string
  inputBinding:
    position: 2
- id: in_out_tbl
  doc: Output file with transferred annotations
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ncbi.py
- tbl_transfer
