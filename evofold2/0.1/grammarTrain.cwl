class: CommandLineTool
id: grammarTrain.cwl
inputs:
- id: grammar_txt
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: emit_models_txt
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: al_gama
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: t
  doc: '[ --treeFile ] arg                 File with Newick tree used with phylo  grammars.'
  type: boolean
  inputBinding:
    prefix: -t
- id: a
  doc: '[ --annoMapFile ] arg              Anno map file.'
  type: boolean
  inputBinding:
    prefix: -a
- id: n
  doc: '[ --annoName ] arg                 Name of annotation to use.'
  type: boolean
  inputBinding:
    prefix: -n
- id: p
  doc: '[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts  used
    for each transition distribution  (For each transition, the number of  pseudocounts
    is defined as the initital transition probs in the input file  times the given
    pseudoCounts value).'
  type: boolean
  inputBinding:
    prefix: -p
- id: d
  doc: '[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM  training.
    The training will stop when  the difference in log likelihood is  below minDeltaLogLik
    (default is 1e-4).'
  type: boolean
  inputBinding:
    prefix: -d
- id: i
  doc: '[ --maxIter ] arg (=100)           Max numbr if iterations of the EM  training
    (default is 100).'
  type: boolean
  inputBinding:
    prefix: -i
- id: l
  doc: '[ --logFile ] arg (=grammarLogFile.txt) Log file for EM training (default
    is  ./grammarLogFile.txt).'
  type: boolean
  inputBinding:
    prefix: -l
- id: o
  doc: '[ --outputGrammar ] arg (=-)       Output file for trained grammar  (default
    is stdout).'
  type: boolean
  inputBinding:
    prefix: -o
- id: o
  doc: '[ --tmpGrammar ] arg (=tmpGrammar.txt) Output file for partly trained grammar,
    printed in each interation (default is  tmpGrammar.txt).'
  type: boolean
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- grammarTrain
