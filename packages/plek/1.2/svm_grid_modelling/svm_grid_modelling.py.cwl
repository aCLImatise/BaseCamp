class: CommandLineTool
id: svm_grid_modelling.py.cwl
inputs:
- id: in_log_two_c
  doc: "{begin,end,step | \"null\"} : set the range of c (default -5,15,2)\nbegin,end,step\
    \ -- c_range = 2^{begin,...,begin+k*step,...,end}\n\"null\"         -- do not\
    \ grid with c"
  type: boolean
  inputBinding:
    prefix: -log2c
- id: in_log_two_g
  doc: "{begin,end,step | \"null\"} : set the range of g (default 3,-15,-2)\nbegin,end,step\
    \ -- g_range = 2^{begin,...,begin+k*step,...,end}\n\"null\"         -- do not\
    \ grid with g"
  type: boolean
  inputBinding:
    prefix: -log2g
- id: in_nfold_cross_validation
  doc: ': n-fold cross validation (default 5)'
  type: long
  inputBinding:
    prefix: -v
- id: in_svm_train
  doc: ': set svm executable path and name'
  type: File
  inputBinding:
    prefix: -svmtrain
- id: in_gnuplot
  doc: "{pathname | \"null\"} :\npathname -- set gnuplot executable path and name\n\
    \"null\"   -- do not plot"
  type: boolean
  inputBinding:
    prefix: -gnuplot
- id: in_out
  doc: "{pathname | \"null\"} : (default dataset.out)\npathname -- set output file\
    \ path and name\n\"null\"   -- do not output file"
  type: File
  inputBinding:
    prefix: -out
- id: in_png
  doc: ': set graphic output file path and name (default dataset.png)'
  type: File
  inputBinding:
    prefix: -png
- id: in_resume
  doc: "[pathname] : resume the grid task using an existing output file (default pathname\
    \ is dataset.out)\nThis is experimental. Try this option only if some parameters\
    \ have been checked for the SAME data."
  type: File
  inputBinding:
    prefix: -resume
- id: in_grid_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_grid_options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_svm_options
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_dataset
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "{pathname | \"null\"} : (default dataset.out)\npathname -- set output file\
    \ path and name\n\"null\"   -- do not output file"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_png
  doc: ': set graphic output file path and name (default dataset.png)'
  type: File
  outputBinding:
    glob: $(inputs.in_png)
- id: out_resume
  doc: "[pathname] : resume the grid task using an existing output file (default pathname\
    \ is dataset.out)\nThis is experimental. Try this option only if some parameters\
    \ have been checked for the SAME data."
  type: File
  outputBinding:
    glob: $(inputs.in_resume)
cwlVersion: v1.1
baseCommand:
- svm_grid_modelling.py
