class: CommandLineTool
id: repeat_match.cwl
inputs:
- id: in_use_exhaustive_search
  doc: Use exhaustive (slow) search to find matches
  type: boolean?
  inputBinding:
    prefix: -E
- id: in_forward_strand_only
  doc: Forward strand only, don't use reverse complement
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_set_minimum_exact
  doc: '#  Set minimum exact match length to #'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_only_output_tandem
  doc: Only output tandem repeats
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_set_level_verbose
  doc: '#  Set level of verbose (debugging) printing to #'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_genome_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- repeat-match
