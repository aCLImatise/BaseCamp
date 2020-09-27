class: CommandLineTool
id: grammarTrain.cwl
inputs:
- id: in_arg_file_newick
  doc: '[ --treeFile ] arg                 File with Newick tree used with phylo'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_arg_name_annotation
  doc: '[ --annoName ] arg                 Name of annotation to use.'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_defines_total
  doc: "[ --pseudoCounts ] arg (=0)        Defines total number of pseudocounts\n\
    used for each transition distribution\n(For each transition, the number of\npseudocounts\
    \ is defined as the initital\ntransition probs in the input file\ntimes the given\
    \ pseudoCounts value)."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_defines_stopping
  doc: "[ --minDeltaLogLik ] arg (=0.0001) Defines stopping criteria for the EM\n\
    training. The training will stop when\nthe difference in log likelihood is\nbelow\
    \ minDeltaLogLik (default is 1e-4)."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_max_numbr
  doc: "[ --maxIter ] arg (=100)           Max numbr if iterations of the EM\ntraining\
    \ (default is 100)."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_grammarlogfiletxtlog_file
  doc: "[ --logFile ] arg (=grammarLogFile.txt)\nLog file for EM training (default\
    \ is\n./grammarLogFile.txt)."
  type: boolean
  inputBinding:
    prefix: -l
- id: in_grammars_dot
  doc: -a [ --annoMapFile ] arg              Anno map file.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- grammarTrain
