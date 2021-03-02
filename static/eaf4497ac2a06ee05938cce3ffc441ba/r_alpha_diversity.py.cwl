class: CommandLineTool
id: r_alpha_diversity.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_var_exp
  doc: "The experiment variable used to aggregate sample\ndiversities."
  type: string?
  inputBinding:
    prefix: --varExp
- id: in_indices_alpha_diversity
  doc: "[ALPHA_MEASURES [ALPHA_MEASURES ...]], --alpha-measures [ALPHA_MEASURES [ALPHA_MEASURES\
    \ ...]]\nThe indices of alpha diversity. Available indices :\nObserved, Chao1,\
    \ Shannon, InvSimpson, Simpson, ACE,\nFisher. [Default: ['Observed', 'Chao1',\
    \ 'Shannon',\n'InvSimpson']]"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_r_data
  doc: "The path of RData file containing a phyloseq object-\nthe result of FROGS\
    \ Phyloseq Import Data"
  type: File?
  inputBinding:
    prefix: --rdata
- id: in_html
  doc: "The path to store resulting html file. [Default:\nalpha_diversity.html]"
  type: File?
  inputBinding:
    prefix: --html
- id: in_alpha_out
  doc: "The path to store resulting data file containing alpha\ndiversity table. [Default:\
    \ alpha_diversity.tsv]"
  type: File?
  inputBinding:
    prefix: --alpha-out
- id: in_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several information on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints: []
cwlVersion: v1.1
baseCommand:
- r_alpha_diversity.py
