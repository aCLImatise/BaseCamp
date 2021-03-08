class: CommandLineTool
id: phyloseq_beta_diversity.py.cwl
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
- id: in_distance_methods
  doc: "Comma separated values beta diversity methods\navailable in Phyloseq (see\
    \ https://www.bioconductor.or\ng/packages/devel/bioc/manuals/phyloseq/man/phyloseq.pd\n\
    f). [Default: bray,cc,unifrac,wunifrac]."
  type: string?
  inputBinding:
    prefix: --distance-methods
- id: in_r_data
  doc: "The path of RData file containing a phyloseq object-\nthe result of FROGS\
    \ Phyloseq Import Data"
  type: File?
  inputBinding:
    prefix: --rdata
- id: in_matrix_outdir
  doc: Path to output matrix file
  type: File?
  inputBinding:
    prefix: --matrix-outdir
- id: in_html
  doc: "The HTML file containing the graphs. [Default:\nphyloseq_beta_diversity.nb.html]"
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
- id: out_matrix_outdir
  doc: Path to output matrix file
  type: File?
  outputBinding:
    glob: $(inputs.in_matrix_outdir)
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
- phyloseq_beta_diversity.py
