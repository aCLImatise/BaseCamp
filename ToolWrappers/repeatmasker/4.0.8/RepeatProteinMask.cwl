class: CommandLineTool
id: RepeatProteinMask.cwl
inputs:
- id: in_engine
  doc: "|abblast|wublast\nUse the provided search engine to run the blastx runs."
  type: string?
  inputBinding:
    prefix: -engine
- id: in_p_value
  doc: "#\nThe threshold for accepting matches. Matches must hava a pvalue less\n\
    than this number. Default is *NOT* to threshold."
  type: boolean?
  inputBinding:
    prefix: -pvalue
- id: in_min_score
  doc: "#\nThreshold on minscore. Note no default is added. So all hits will be\n\
    returned unless a minscore is used."
  type: boolean?
  inputBinding:
    prefix: -minscore
- id: in_word_size
  doc: "#\nThe wordsize to use with the blastx search. Default is 3"
  type: boolean?
  inputBinding:
    prefix: -wordsize
- id: in_query_stat_len
  doc: "#\nThe effective length of the query to use in statistical\ncalculations."
  type: boolean?
  inputBinding:
    prefix: -querystatlen
- id: in_max_aa_dist
  doc: "#\nThe maximum distance to consider two blastx hits as the same (and\nthus\
    \ contributing to Sum P scores). Default is 333."
  type: boolean?
  inputBinding:
    prefix: -maxaadist
- id: in_no_low_simple
  doc: "Turns off masking/annotating of low complexity and simple repeats in\nthe\
    \ final output. Low complexity and simple repeat analysis will\nstill occur prior\
    \ to looking for matches to the RepeatPep database.\nDetailed help"
  type: boolean?
  inputBinding:
    prefix: -noLowSimple
- id: in_repeat_modeler
  doc: COPYRIGHT
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
- RepeatProteinMask
