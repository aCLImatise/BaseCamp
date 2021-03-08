class: CommandLineTool
id: tree.py.cwl
inputs:
- id: in_debug
  doc: Keep temporary files to debug program.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_nb_cpus
  doc: 'The maximum number of CPUs used. [Default: 1]'
  type: long?
  inputBinding:
    prefix: --nb-cpus
- id: in_input_sequences
  doc: "Path to input FASTA file of OTU seed sequences.\nWarning: FROGS Tree is only\
    \ working on less than 10000\nsequences!"
  type: File?
  inputBinding:
    prefix: --input-sequences
- id: in_biom_file
  doc: Path to the abundance BIOM file.
  type: File?
  inputBinding:
    prefix: --biom-file
- id: in_out_tree
  doc: "Path to store resulting Newick tree file. (format:\nnwk) [Default: tree.nwk]"
  type: File?
  inputBinding:
    prefix: --out-tree
- id: in_html
  doc: "The HTML file containing the graphs. [Default:\ntree.html]"
  type: File?
  inputBinding:
    prefix: --html
- id: in_log_file
  doc: "This output file will contain several informations on\nexecuted commands.\n"
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
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
  dockerPull: quay.io/biocontainers/frogs:3.2.1--py37_0
cwlVersion: v1.1
baseCommand:
- tree.py
