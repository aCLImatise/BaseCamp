#!/usr/bin/env cwl-runner

baseCommand:
- dfgTrain
class: CommandLineTool
cwlVersion: v1.0
id: dfgtrain
inputs:
- doc: ''
  id: input_var_data_tab
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: input_fac_data_tab
  inputBinding:
    position: 1
  type: string
- doc: '[ --precision ] arg (=5)           Output precision of real numbers.'
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
- doc: '[ --logFile ] arg (=logFile.txt)   Log file for EM training.'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: '[ --emTrain ]                      Perform EM training.'
  id: e
  inputBinding:
    prefix: -e
  type: boolean
- doc: 'Output dfg in dot format to given  fileName. (To convert to ps format,  e.g.
    run: "cat fileName.dot | dot -Tps  -Kneato -Gsize="7.5,10" -o dfg.ps".)'
  id: dotfile
  inputBinding:
    prefix: --dotFile
  type: string
- doc: '[ --dfgSpecPrefix ] arg (=./dfgSpec/) Prefix of DFG specification files.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --outSpecPrefix ] arg (=out_)    Prefix of DFG specification files. Any  included
    prefix directory must already  exist.'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --tmpSpecPrefix ] arg            Prefix of DFG specification files  written
    during each iteration of  training. Allows state of EM to be  saved - especially
    useful for large  datasets. Any included prefix directory must already exist.
    Not defined and not performed by default. '
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: (=factorGraph.txt) Specification of the factor graph  structure.
  id: factor_graph_file
  inputBinding:
    prefix: --factorGraphFile
  type: string
- doc: (=variables.txt)  Specification of the state map used by  each variable.
  id: variables_file
  inputBinding:
    prefix: --variablesFile
  type: string
- doc: (=stateMaps.txt)   Specification of state maps.
  id: state_map_file
  inputBinding:
    prefix: --stateMapFile
  type: string
- doc: (=factorPotentials.txt) Specification of factor potentials.
  id: fac_pot_file
  inputBinding:
    prefix: --facPotFile
  type: string
- doc: Input subscribed variables file in  named data format. Must use same  identifiers
    in same order as varFile
  id: sub_var_file
  inputBinding:
    prefix: --subVarFile
  type: string
- doc: Print factor graph info. Useful for  debugging factor graph specification.
  id: write_info
  inputBinding:
    prefix: --writeInfo
  type: boolean
