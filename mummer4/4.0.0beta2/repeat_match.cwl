class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/repeat_match.cwl
inputs:
- id: use_exhaustive_search
  doc: Use exhaustive (slow) search to find matches
  type: boolean
  inputBinding:
    prefix: -E
- id: forward_strand_only
  doc: Forward strand only, don't use reverse complement
  type: boolean
  inputBinding:
    prefix: -f
- id: set_minimum_length
  doc: '#  Set minimum exact match length to #'
  type: boolean
  inputBinding:
    prefix: -n
- id: only_output_tandem
  doc: Only output tandem repeats
  type: boolean
  inputBinding:
    prefix: -t
- id: set_level_verbose
  doc: '#  Set level of verbose (debugging) printing to #'
  type: boolean
  inputBinding:
    prefix: -V
- id: genome_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- repeat-match
