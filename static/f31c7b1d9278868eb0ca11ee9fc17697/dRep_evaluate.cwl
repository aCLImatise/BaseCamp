class: CommandLineTool
id: dRep_evaluate.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long?
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_warn_dist
  doc: "How far from the threshold to throw cluster warnings\n(default: 0.25)"
  type: double?
  inputBinding:
    prefix: --warn_dist
- id: in_warn_sim
  doc: "Similarity threshold for warnings between dereplicated\ngenomes (default:\
    \ 0.98)"
  type: double?
  inputBinding:
    prefix: --warn_sim
- id: in_warn_aln
  doc: "Minimum aligned fraction for warnings between\ndereplicated genomes (ANIn)\
    \ (default: 0.25)"
  type: double?
  inputBinding:
    prefix: --warn_aln
- id: in_things_evaluate_input
  doc: "[EVALUATE [EVALUATE ...]], --evaluate [EVALUATE [EVALUATE ...]]\nThings to\
    \ evaluate Input 'all' or 'a' to evaluate all\n1) Evaluate de-replicated genome\
    \ similarity\n2) Throw warnings for clusters that were almost different\n3) Generate\
    \ a database of information on winning genomes\n(default: None)\n"
  type: boolean?
  inputBinding:
    prefix: -e
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dRep
- evaluate
