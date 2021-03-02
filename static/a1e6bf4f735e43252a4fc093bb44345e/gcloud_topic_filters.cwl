class: CommandLineTool
id: gcloud_topic_filters.cwl
inputs:
- id: in_format
  doc: '[ATTRIBUTES](PROJECTION) and --filter=EXPRESSION flags along'
  type: string?
  inputBinding:
    prefix: --format
- id: in_logic_operator
  doc: "Expressions containing both AND and OR must be parenthesized to\ndisambiguate\
    \ precedence.\nNOT term-1\nTrue if term-1 is False, otherwise False.\nterm-1 AND\
    \ term-2\nTrue if both term-1 and term-2 are true.\nterm-1 OR term-2\nTrue if\
    \ at least one of term-1 or term-2 is true.\nterm-1 term-2\nTrue if both term-1\
    \ and term-2 are true. Implicit conjunction has\nlower precedence than OR."
  type: string
  inputBinding:
    position: 0
- id: in_terms
  doc: "A term is a key operator value tuple, where key is a dotted name that\nevaluates\
    \ to the value of a resource attribute, and value may be:\nnumber\ninteger or\
    \ floating point numeric constant\nunquoted literal\ncharacter sequence terminated\
    \ by space, ( or )\nquoted literal\n\"...\" or '...' Most filter expressions need\
    \ to be quoted in shell\ncommands. If you use '...' shell quotes then use \"...\"\
    \ filter\nstring literal quotes and vice versa."
  type: string
  inputBinding:
    position: 1
- id: in_value_dot
  doc: EXAMPLES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gcloud
- topic
- filters
