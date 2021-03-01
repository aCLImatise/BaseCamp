class: CommandLineTool
id: PyLOH.py_run_model.cwl
inputs:
- id: in_allele_number_max
  doc: "Maximum copy number of each allele allows to take.\nDefault is 2."
  type: long?
  inputBinding:
    prefix: --allelenumber_max
- id: in_priors
  doc: "File of the prior distribution. If not provided, use\nuniform prior. Default\
    \ is None."
  type: File?
  inputBinding:
    prefix: --priors
- id: in_max_iters
  doc: "Maximum number of iterations for training. Default is\n100."
  type: long?
  inputBinding:
    prefix: --max_iters
- id: in_stop_value
  doc: "Stop value of the EM algorithm for training. If the\nchange of log-likelihood\
    \ is lower than this value,\nstop training. Default is 1e-7.\n"
  type: double?
  inputBinding:
    prefix: --stop_value
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- PyLOH.py
- run_model
