class: CommandLineTool
id: panphlan_find_gene_grp.py.cwl
inputs:
- id: in_i_matrix
  doc: Path to presence/absence matrix
  type: File
  inputBinding:
    prefix: --i_matrix
- id: in_output
  doc: Path to ouput file with genes groups
  type: File
  inputBinding:
    prefix: --output
- id: in_cut_top
  doc: "Amount of rows to remove based on top and bottom row\nsums. Default 0.01"
  type: double
  inputBinding:
    prefix: --cut_top
- id: in_out_plot
  doc: Path to heatmap plot output.
  type: File
  inputBinding:
    prefix: --out_plot
- id: in_pan_genome
  doc: Path to pangenome file.
  type: File
  inputBinding:
    prefix: --pangenome
- id: in_optics_xi
  doc: Xi parameter for OPTICS clustering
  type: string
  inputBinding:
    prefix: --optics_xi
- id: in_analysis
  doc: Should gene groups be analyzed?
  type: boolean
  inputBinding:
    prefix: --analysis
- id: in_empirical
  doc: "How many ramdom sample in empirical pvalue generation\n? Default 500"
  type: long
  inputBinding:
    prefix: --empirical
- id: in_verbose
  doc: Show progress information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_plot
  doc: Path to heatmap plot output.
  type: File
  outputBinding:
    glob: $(inputs.in_out_plot)
cwlVersion: v1.1
baseCommand:
- panphlan_find_gene_grp.py
