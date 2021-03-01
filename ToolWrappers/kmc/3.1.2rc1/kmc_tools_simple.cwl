class: CommandLineTool
id: kmc_tools_simple.cwl
inputs:
- id: in_ci
  doc: <value>  - exclude k-mers occurring less than <value> times
  type: boolean?
  inputBinding:
    prefix: -ci
- id: in_cx
  doc: <value>  - exclude k-mers occurring more of than <value> times
  type: boolean?
  inputBinding:
    prefix: -cx
- id: in_cs
  doc: <value>  - maximal value of a counter
  type: boolean?
  inputBinding:
    prefix: -cs
- id: in_oc
  doc: "<value>  - redefine counter calculation mode for equal k-mers\nAvailable values\
    \ :\nmin   - get lower value of a k-mer counter (default value for intersect operation)\n\
    max   - get upper value of a k-mer counter\nsum   - get sum of counters from both\
    \ databases\ndiff  - get difference between counters (default for counters_subtract\
    \ operation)\nleft  - get counter from first database (input1)\nright - get counter\
    \ from second database (input2)"
  type: boolean?
  inputBinding:
    prefix: -oc
- id: in_intersect
  doc: '- output database will contains only k-mers that are present in both input
    sets'
  type: string
  inputBinding:
    position: 0
- id: in_union
  doc: '- output database will contains each k-mer present in any of input sets'
  type: string
  inputBinding:
    position: 1
- id: in_km_ers_subtract
  doc: "- difference of input sets based on k-mers. \nOutput database will contains\
    \ only k-mers that are present in first input set but absent in the second one"
  type: string
  inputBinding:
    position: 2
- id: in_counters_subtract
  doc: "- difference of input sets based on k-mers and their counters (weaker version\
    \ of kmers_subtract).\nOutput database will contains all k-mers that are present\
    \ in first input,\nbeyond those for which counter operation will lead to remove\
    \ (i.e. counter equal to 0 or negative number)"
  type: string
  inputBinding:
    position: 3
- id: in_reverse_km_ers_subtract
  doc: '- same as kmers_subtract but treat input2 as first and input1 as second'
  type: string
  inputBinding:
    position: 4
- id: in_reverse_counters_subtract
  doc: '- same as counters_subtract but treat input2 as first and input1 as second'
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- kmc_tools
- simple
