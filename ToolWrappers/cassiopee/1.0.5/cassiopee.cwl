class: CommandLineTool
id: cassiopee.cwl
inputs:
- id: in_maximum_index_depth
  doc: ': maximum index depth / max pattern size'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_save_index_later
  doc: ': save index for later use'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in__sequence_index
  doc: ': sequence to index'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in__pattern_search
  doc: ': pattern to search'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_file_containing_pattern
  doc: ': file containing pattern to search'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in__output_file
  doc: ': output file'
  type: File?
  inputBinding:
    prefix: -o
- id: in_apply_tree_reduction
  doc: ': apply tree reduction'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_search_mode_dna
  doc: ': search mode: 0=DNA, 1=RNA, 2=Protein'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_allow_ambiguity_search
  doc: ': allow alphabet ambiguity search'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_max_consecutive_n
  doc: ': max consecutive N allowed matches in search'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_max_substitution_allowed
  doc: ': max substitution allowed matches in search'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_max_indel_allowed
  doc: ': max indel allowed matches in search'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_generates_dot_file
  doc: ': generates a dot file of the graph'
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_max_depth_graph
  doc: ': max depth of the graph'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_output_format_tsv
  doc: ': output format: 0:tsv (default), 1:json'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_minimum_position_sequence
  doc: ': minimum position in sequence'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_maximum_position_sequence
  doc: ': maximum position in sequence'
  type: boolean?
  inputBinding:
    prefix: -y
- id: in__show_version
  doc: ': show version'
  type: boolean?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__output_file
  doc: ': output file'
  type: File?
  outputBinding:
    glob: $(inputs.in__output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cassiopee
