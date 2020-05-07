class: CommandLineTool
id: dfgTrain.cwl
inputs:
- id: input_var_data_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_fac_data_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: p
  doc: '[ --precision ] arg (=5)           Output precision of real numbers.'
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
  doc: '[ --logFile ] arg (=logFile.txt)   Log file for EM training.'
  type: boolean
  inputBinding:
    prefix: -l
- id: e
  doc: '[ --emTrain ]                      Perform EM training.'
  type: boolean
  inputBinding:
    prefix: -e
- id: dotfile
  doc: 'Output dfg in dot format to given  fileName. (To convert to ps format,  e.g.
    run: "cat fileName.dot | dot -Tps  -Kneato -Gsize="7.5,10" -o dfg.ps".)'
  type: string
  inputBinding:
    prefix: --dotFile
- id: s
  doc: '[ --dfgSpecPrefix ] arg (=./dfgSpec/) Prefix of DFG specification files.'
  type: boolean
  inputBinding:
    prefix: -s
- id: o
  doc: '[ --outSpecPrefix ] arg (=out_)    Prefix of DFG specification files. Any  included
    prefix directory must already  exist.'
  type: boolean
  inputBinding:
    prefix: -o
- id: t
  doc: '[ --tmpSpecPrefix ] arg            Prefix of DFG specification files  written
    during each iteration of  training. Allows state of EM to be  saved - especially
    useful for large  datasets. Any included prefix directory must already exist.
    Not defined and not performed by default. '
  type: boolean
  inputBinding:
    prefix: -t
- id: factor_graph_file
  doc: (=factorGraph.txt) Specification of the factor graph  structure.
  type: string
  inputBinding:
    prefix: --factorGraphFile
- id: variables_file
  doc: (=variables.txt)  Specification of the state map used by  each variable.
  type: string
  inputBinding:
    prefix: --variablesFile
- id: state_map_file
  doc: (=stateMaps.txt)   Specification of state maps.
  type: string
  inputBinding:
    prefix: --stateMapFile
- id: fac_pot_file
  doc: (=factorPotentials.txt) Specification of factor potentials.
  type: string
  inputBinding:
    prefix: --facPotFile
- id: sub_var_file
  doc: Input subscribed variables file in  named data format. Must use same  identifiers
    in same order as varFile
  type: string
  inputBinding:
    prefix: --subVarFile
- id: write_info
  doc: Print factor graph info. Useful for  debugging factor graph specification.
  type: boolean
  inputBinding:
    prefix: --writeInfo
outputs: []
cwlVersion: v1.1
baseCommand:
- dfgTrain
