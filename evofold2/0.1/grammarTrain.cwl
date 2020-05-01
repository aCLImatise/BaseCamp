#!/usr/bin/env cwl-runner

baseCommand:
- grammarTrain
class: CommandLineTool
cwlVersion: v1.0
id: grammartrain
inputs:
- doc: ''
  id: grammar_txt
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: emit_models_txt
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: al_gama
  inputBinding:
    position: 2
  type: string
- doc: '[ --treeFile ] arg                 File with Newick tree used with phylo  grammars.'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: '[ --annoMapFile ] arg              Anno map file.'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --annoName ] arg                 Name of annotation to use.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts  used
    for each transition distribution  (For each transition, the number of  pseudocounts
    is defined as the initital transition probs in the input file  times the given
    pseudoCounts value).'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM  training.
    The training will stop when  the difference in log likelihood is  below minDeltaLogLik
    (default is 1e-4).'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --maxIter ] arg (=100)           Max numbr if iterations of the EM  training
    (default is 100).'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --logFile ] arg (=grammarLogFile.txt) Log file for EM training (default
    is  ./grammarLogFile.txt).'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --outputGrammar ] arg (=-)       Output file for trained grammar  (default
    is stdout).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --tmpGrammar ] arg (=tmpGrammar.txt) Output file for partly trained grammar,
    printed in each interation (default is  tmpGrammar.txt).'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
