class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/grammarTrain.cwl
inputs:
- id: arg_file_newick
  doc: '[ --treeFile ] arg                 File with Newick tree used with phylo  grammars.'
  type: boolean
  inputBinding:
    prefix: -t
- id: arg_anno_map
  doc: '[ --annoMapFile ] arg              Anno map file.'
  type: boolean
  inputBinding:
    prefix: -a
- id: arg_name_use
  doc: '[ --annoName ] arg                 Name of annotation to use.'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_defines_number
  doc: '[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts  used
    for each transition distribution  (For each transition, the number of  pseudocounts
    is defined as the initital transition probs in the input file  times the given
    pseudoCounts value).'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_defines_stopping
  doc: '[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM  training.
    The training will stop when  the difference in log likelihood is  below minDeltaLogLik
    (default is 1e-4).'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_max_numbr
  doc: '[ --maxIter ] arg (=100)           Max numbr if iterations of the EM  training
    (default is 100).'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_grammarlogfiletxt_log
  doc: '[ --logFile ] arg (=grammarLogFile.txt) Log file for EM training (default
    is  ./grammarLogFile.txt).'
  type: boolean
  inputBinding:
    prefix: -l
- id: grammar_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: emit_models_dot_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: alg_do_tama
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- grammarTrain
