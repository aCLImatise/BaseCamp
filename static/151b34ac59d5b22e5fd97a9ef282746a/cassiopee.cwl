class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cassiopee.cwl
inputs:
- id: maximum_index_depth
  doc: ': maximum index depth / max pattern size'
  type: boolean
  inputBinding:
    prefix: -l
- id: save_index_later
  doc: ': save index for later use'
  type: boolean
  inputBinding:
    prefix: -u
- id: _sequence_index
  doc: ': sequence to index'
  type: boolean
  inputBinding:
    prefix: -s
- id: _pattern_search
  doc: ': pattern to search'
  type: boolean
  inputBinding:
    prefix: -p
- id: file_containing_pattern
  doc: ': file containing pattern to search'
  type: boolean
  inputBinding:
    prefix: -f
- id: _output_file
  doc: ': output file'
  type: boolean
  inputBinding:
    prefix: -o
- id: apply_tree_reduction
  doc: ': apply tree reduction'
  type: boolean
  inputBinding:
    prefix: -r
- id: search_mode_dna
  doc: ': search mode: 0=DNA, 1=RNA, 2=Protein'
  type: boolean
  inputBinding:
    prefix: -m
- id: allow_ambiguity_search
  doc: ': allow alphabet ambiguity search'
  type: boolean
  inputBinding:
    prefix: -a
- id: max_consecutive_n
  doc: ': max consecutive N allowed matches in search'
  type: boolean
  inputBinding:
    prefix: -n
- id: max_substitution_allowed
  doc: ': max substitution allowed matches in search'
  type: boolean
  inputBinding:
    prefix: -e
- id: max_indel_allowed
  doc: ': max indel allowed matches in search'
  type: boolean
  inputBinding:
    prefix: -i
- id: generates_dot_file
  doc: ': generates a dot file of the graph'
  type: boolean
  inputBinding:
    prefix: -g
- id: max_depth_graph
  doc: ': max depth of the graph'
  type: boolean
  inputBinding:
    prefix: -d
- id: output_format_tsv
  doc: ': output format: 0:tsv (default), 1:json'
  type: boolean
  inputBinding:
    prefix: -t
- id: minimum_position_sequence
  doc: ': minimum position in sequence'
  type: boolean
  inputBinding:
    prefix: -x
- id: maximum_position_sequence
  doc: ': maximum position in sequence'
  type: boolean
  inputBinding:
    prefix: -y
- id: _show_version
  doc: ': show version'
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- cassiopee
