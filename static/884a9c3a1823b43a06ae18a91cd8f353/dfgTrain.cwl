class: CommandLineTool
id: dfgTrain.cwl
inputs:
- id: in_arg_output_precision
  doc: '[ --precision ] arg (=5)           Output precision of real numbers.'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_defines_stopping
  doc: "[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM\n\
    training. The training will stop when\nthe difference in log likelihood is\nbelow\
    \ minDeltaLogLik (default is 1e-4)."
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_arg_max_numbr
  doc: "[ --maxIter ] arg (=100)           Max numbr if iterations of the EM\ntraining\
    \ (default is 100)."
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_arg_logfiletxt_log
  doc: '[ --logFile ] arg (=logFile.txt)   Log file for EM training.'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_perform_em_training
  doc: '[ --emTrain ]                      Perform EM training.'
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_dotfile
  doc: "Output dfg in dot format to given\nfileName. (To convert to ps format,\ne.g.\
    \ run: \"cat fileName.dot | dot -Tps\n-Kneato -Gsize=\"7.5,10\" -o dfg.ps\".)"
  type: File?
  inputBinding:
    prefix: --dotFile
- id: in_arg_dfgspecprefix_dfg
  doc: "[ --dfgSpecPrefix ] arg (=./dfgSpec/)\nPrefix of DFG specification files."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg__prefix
  doc: "[ --outSpecPrefix ] arg (=out_)    Prefix of DFG specification files. Any\n\
    included prefix directory must already\nexist."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_arg_prefix_fileswritten
  doc: "[ --tmpSpecPrefix ] arg            Prefix of DFG specification files\nwritten\
    \ during each iteration of\ntraining. Allows state of EM to be\nsaved - especially\
    \ useful for large\ndatasets. Any included prefix directory\nmust already exist.\
    \ Not defined and not\nperformed by default."
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_factor_graph_file
  doc: "(=factorGraph.txt)\nSpecification of the factor graph\nstructure."
  type: string?
  inputBinding:
    prefix: --factorGraphFile
- id: in_variables_file
  doc: "(=variables.txt)  Specification of the state map used by\neach variable."
  type: string?
  inputBinding:
    prefix: --variablesFile
- id: in_state_map_file
  doc: (=stateMaps.txt)   Specification of state maps.
  type: string?
  inputBinding:
    prefix: --stateMapFile
- id: in_fac_pot_file
  doc: "(=factorPotentials.txt)\nSpecification of factor potentials."
  type: string?
  inputBinding:
    prefix: --facPotFile
- id: in_sub_var_file
  doc: "Input subscribed variables file in\nnamed data format. Must use same\nidentifiers\
    \ in same order as varFile"
  type: File?
  inputBinding:
    prefix: --subVarFile
- id: in_write_info
  doc: "Print factor graph info. Useful for\ndebugging factor graph specification.\n"
  type: boolean?
  inputBinding:
    prefix: --writeInfo
- id: in_input_var_data_dot_tab
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_fac_data_dot_tab
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_dotfile
  doc: "Output dfg in dot format to given\nfileName. (To convert to ps format,\ne.g.\
    \ run: \"cat fileName.dot | dot -Tps\n-Kneato -Gsize=\"7.5,10\" -o dfg.ps\".)"
  type: File?
  outputBinding:
    glob: $(inputs.in_dotfile)
hints: []
cwlVersion: v1.1
baseCommand:
- dfgTrain
