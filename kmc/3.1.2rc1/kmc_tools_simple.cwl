class: CommandLineTool
id: ../../../kmc_tools_simple.cwl
inputs:
- id: ci
  doc: '<value>  - exclude k-mers occurring less than <value> times '
  type: boolean
  inputBinding:
    prefix: -ci
- id: cx
  doc: <value>  - exclude k-mers occurring more of than <value> times
  type: boolean
  inputBinding:
    prefix: -cx
- id: intersect
  doc: '- output database will contains only k-mers that are present in both input
    sets'
  type: long
  inputBinding:
    position: 0
- id: union
  doc: '- output database will contains each k-mer present in any of input sets'
  type: string
  inputBinding:
    position: 1
- id: km_ers_subtract
  doc: '- difference of input sets based on k-mers.  Output database will contains
    only k-mers that are present in first input set but absent in the second one'
  type: string
  inputBinding:
    position: 2
- id: counters_subtract
  doc: '- difference of input sets based on k-mers and their counters (weaker version
    of kmers_subtract). Output database will contains all k-mers that are present
    in first input,  beyond those for which counter operation will lead to remove
    (i.e. counter equal to 0 or negative number)'
  type: string
  inputBinding:
    position: 3
- id: reverse_km_ers_subtract
  doc: '- same as kmers_subtract but treat input2 as first and input1 as second'
  type: string
  inputBinding:
    position: 4
- id: reverse_counters_subtract
  doc: '- same as counters_subtract but treat input2 as first and input1 as second'
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- kmc_tools
- simple
