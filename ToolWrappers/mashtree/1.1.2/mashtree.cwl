class: CommandLineTool
id: mashtree.cwl
inputs:
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
- id: in_out_matrix
  doc: "''   If specified, will write a distance matrix\nin tab-delimited format"
  type: boolean?
  inputBinding:
    prefix: --outmatrix
- id: in_file_of_files
  doc: "If specified, mashtree will try to read\nfilenames from each input file. The\
    \ file of\nfiles format is one filename per line. This\nfile of files cannot be\
    \ compressed."
  type: boolean?
  inputBinding:
    prefix: --file-of-files
- id: in_out_tree
  doc: "If specified, the tree will be written to\nthis file and not to stdout. Log\
    \ messages\nwill still go to stderr."
  type: boolean?
  inputBinding:
    prefix: --outtree
- id: in_citation
  doc: Display the preferred citation and exit
  type: boolean?
  inputBinding:
    prefix: --citation
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
- id: in_seed
  doc: 42   Seed for mash sketch
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_save_sketches
  doc: "''   If a directory is supplied, then sketches\nwill be saved in it.\nIf no\
    \ directory is supplied, then sketches\nwill be saved alongside source files.\n"
  type: boolean?
  inputBinding:
    prefix: --save-sketches
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mashtree
