class: CommandLineTool
id: phyloseq_manova.py.cwl
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
- id: in_r_data
  doc: "The path of RData file containing a phyloseq object-\nthe result of FROGS\
    \ Phyloseq Import Data"
  type: File?
  inputBinding:
    prefix: --rdata
- id: in_distance_matrix
  doc: "The path of data file containing beta diversity\ndistance matrix. These file\
    \ is the result of FROGS\nPhyloseq Beta Diversity."
  type: File?
  inputBinding:
    prefix: --distance-matrix
- id: in_html
  doc: "The HTML file containing the graphs. [Default:\nphyloseq_manova.nb.html]"
  type: File?
  inputBinding:
    prefix: --html
- id: in_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_log_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/frogs:3.2.2--py37_0
cwlVersion: v1.1
baseCommand:
- phyloseq_manova.py
