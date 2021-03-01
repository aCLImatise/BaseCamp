class: CommandLineTool
id: correct_frags.cwl
inputs:
- id: in_set_keep_flag
  doc: set keep flag on end of frags with less than this many olaps
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_specify_file_use
  doc: "specify file of sorted overlaps to use (in the format produced\nby  get-olaps"
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_minimum_exactmatch_region
  doc: minimum exact-match region to prevent change
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_specify_output_file
  doc: specify output file to hold correction info
  type: File?
  inputBinding:
    prefix: -o
- id: in_use_haplotype_counts
  doc: don't use haplotype counts to correct
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_specify_binary_store
  doc: specify the binary overlap store containing overlaps to use
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_set_number_use
  doc: set number of p-threads to use
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_specify_level_verbose
  doc: specify level of verbose outputs, higher is more
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_specify_number_vote
  doc: specify number of exact match bases around an error to vote to change
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_length_end_exclude
  doc: length of end of exact match to exclude in preventing change
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_ehp
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -ehp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_specify_output_file
  doc: specify output file to hold correction info
  type: File?
  outputBinding:
    glob: $(inputs.in_specify_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- correct-frags
