class: CommandLineTool
id: r_structure.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_var_exp
  doc: The experiment variable you want to analyse.
  type: string?
  inputBinding:
    prefix: --varExp
- id: in_ordination_method
  doc: 'The ordination methods. [Default: MDS]'
  type: string?
  inputBinding:
    prefix: --ordination-method
- id: in_r_data
  doc: "The path of RData file containing a phyloseq object-\nthe result of FROGS\
    \ Phyloseq Import Data"
  type: File?
  inputBinding:
    prefix: --rdata
- id: in_distance_matrix
  doc: "Path of data file containing beta diversity distance\nmatrix. These file is\
    \ the result of FROGS Phyloseq\nBeta Diversity."
  type: File?
  inputBinding:
    prefix: --distance-matrix
- id: in_html
  doc: "Path to store resulting html file containing plots.\n[Default: structure.html]"
  type: File?
  inputBinding:
    prefix: --html
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
- r_structure.py
