class: CommandLineTool
id: faSplit.cwl
inputs:
- id: in_verbose
  doc: '- Write names of each file created (=3 more details)'
  type: long?
  inputBinding:
    prefix: -verbose
- id: in_max_n
  doc: "- Suppress pieces with more than maxN n's.  Only used with size.\ndefault\
    \ is size-1 (only suppresses pieces that are all N)."
  type: long?
  inputBinding:
    prefix: -maxN
- id: in_one_file
  doc: '- Put output in one file. Only used with size'
  type: boolean?
  inputBinding:
    prefix: -oneFile
- id: in_extra
  doc: '- Add N extra bytes at the end to form overlapping pieces.  Only used with
    size.'
  type: long?
  inputBinding:
    prefix: -extra
- id: in_out
  doc: Get masking from outfile.  Only used with size.
  type: long?
  inputBinding:
    prefix: -out
- id: in_lift
  doc: "Put info on how to reconstruct sequence from\npieces in file.lft.  Only used\
    \ with size and gap."
  type: File?
  inputBinding:
    prefix: -lift
- id: in_min_gap_size
  doc: "Consider a block of Ns to be a gap if block size >= X.\nDefault value 1000.\
    \  Only used with gap."
  type: long?
  inputBinding:
    prefix: -minGapSize
- id: in_no_gap_drops
  doc: "- include all N's when splitting by gap."
  type: boolean?
  inputBinding:
    prefix: -noGapDrops
- id: in_outdir_depth
  doc: "Create N levels of output directory under current dir.\nThis helps prevent\
    \ NFS problems with a large number of\nfile in a directory.  Using -outDirDepth=3\
    \ would\nproduce ./1/2/3/outRoot123.fa."
  type: long?
  inputBinding:
    prefix: -outDirDepth
- id: in_prefix_length
  doc: "- used with byname option. create a separate output\nfile for each group of\
    \ sequences names with same prefix\nof length N.\n"
  type: long?
  inputBinding:
    prefix: -prefixLength
- id: in_how
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_count
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- faSplit
