class: CommandLineTool
id: hisatgenotype.py.cwl
inputs:
- id: alignment_file
  doc: Sorted BAM alignment file name
  type: string
  inputBinding:
    prefix: --alignment-file
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: num_edit_dist
  doc: 'Maximum number of mismatches per read alignment to be considered (default:
    2)'
  type: string
  inputBinding:
    prefix: --num-editdist
- id: assembly
  doc: Perform assembly
  type: boolean
  inputBinding:
    prefix: --assembly
- id: local_database
  doc: Use local database
  type: boolean
  inputBinding:
    prefix: --local-database
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: string
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype.py
