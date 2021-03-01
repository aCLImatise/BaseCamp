class: CommandLineTool
id: mashtree_init.pl.cwl
inputs:
- id: in_outfile
  doc: "''   Required output sqlite file"
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_tempdir
  doc: "''   If specified, this directory will not be\nremoved at the end of the script\
    \ and can\nbe used to cache results for future\nanalyses.\nIf not specified, a\
    \ dir will be made for you\nand then deleted at the end of this script."
  type: boolean?
  inputBinding:
    prefix: --tempdir
- id: in_num_cpus
  doc: 1    This script uses Perl threads.
  type: boolean?
  inputBinding:
    prefix: --numcpus
- id: in_trunc_length
  doc: 250  How many characters to keep in a filename
  type: boolean?
  inputBinding:
    prefix: --truncLength
- id: in_sort_order
  doc: "ABC  For neighbor-joining, the sort order can\nmake a difference. Options\
    \ include:\nABC (alphabetical), random, input-order"
  type: boolean?
  inputBinding:
    prefix: --sort-order
- id: in_min_depth
  doc: "5    If mindepth is zero, then it will be\nchosen in a smart but slower method,\n\
    to discard lower-abundance kmers."
  type: boolean?
  inputBinding:
    prefix: --mindepth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: "''   Required output sqlite file"
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- mashtree_init.pl
