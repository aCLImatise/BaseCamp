class: CommandLineTool
id: mash_screen.cwl
inputs:
- id: in_parallelism_many_threads
  doc: Parallelism. This many threads will be spawned for processing. [1]
  type: long
  inputBinding:
    prefix: -p
- id: in_winnertakesall_strategy_identity
  doc: "Winner-takes-all strategy for identity estimates. After counting\nhashes for\
    \ each query, hashes that appear in multiple queries will\nbe removed from all\
    \ except the one with the best identity (ties\nbroken by larger query), and other\
    \ identities will be reduced. This\nremoves output redundancy, providing a rough\
    \ compositional outline."
  type: boolean
  inputBinding:
    prefix: -w
- id: in_minimum_identity_report
  doc: "Minimum identity to report. Inclusive unless set to zero, in which\ncase only\
    \ identities greater than zero (i.e. with at least one\nshared hash) will be reported.\
    \ Set to -1 to output everything.\n(-1-1) [0]"
  type: long
  inputBinding:
    prefix: -i
- id: in_maximum_pvalue_report
  doc: Maximum p-value to report. (0-1) [1.0]
  type: long
  inputBinding:
    prefix: -v
- id: in_option
  doc: Description (range) [default]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mash
- screen
