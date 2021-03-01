class: CommandLineTool
id: ptmSummary.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string?
  inputBinding:
    prefix: -p
- id: in_no_log_two
  doc: Do not log2 normalize quantification values.
  type: boolean?
  inputBinding:
    prefix: --no-log2
- id: in_no_median
  doc: "Do not normalize quantification values by the median\nof the experiment."
  type: boolean?
  inputBinding:
    prefix: --no-median
- id: in_wp
  doc: "The whole proteome inference file, if it exists. For\nmultiple replicates,\
    \ separate by spaces."
  type: string[]
  inputBinding:
    prefix: --wp
- id: in_non_mod_norm
  doc: Normalize the data by the non-modified peptides.
  type: boolean?
  inputBinding:
    prefix: --non-mod-norm
- id: in_site_file
  doc: "The output path for the file with sumamries at the\nsite level."
  type: File?
  inputBinding:
    prefix: --site-file
- id: in_peptide_file
  doc: "The output path for the file with sumamries at the\nsite and peptide level."
  type: File?
  inputBinding:
    prefix: --peptide-file
- id: in_inference
  doc: "The protein inference file (your peptide file with\ngene/protein annotations).\
    \ For multiple files,\nseparate by spaces (must be in same order as mods)."
  type: string[]
  inputBinding:
    prefix: --inference
- id: in_gene
  doc: The Gene column name
  type: string?
  inputBinding:
    prefix: --gene
- id: in_protein
  doc: The Protein column name
  type: string?
  inputBinding:
    prefix: --protein
- id: in_peptide
  doc: The Peptide column name
  type: string?
  inputBinding:
    prefix: --peptide
- id: in_quant
  doc: "The name of quantification columns (such as\nHeavy/Light). Separate multiple\
    \ columns by spaces"
  type: string[]
  inputBinding:
    prefix: --quant
- id: in_mods
  doc: "The modifications file (the file with sites,\npeptides). For multiple files,\
    \ separate by spaces\n(must be in same order as inference)."
  type: string[]
  inputBinding:
    prefix: --mods
- id: in_site_protein
  doc: "The mod file protein column name\n"
  type: File?
  inputBinding:
    prefix: --site-protein
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_site_file
  doc: "The output path for the file with sumamries at the\nsite level."
  type: File?
  outputBinding:
    glob: $(inputs.in_site_file)
- id: out_peptide_file
  doc: "The output path for the file with sumamries at the\nsite and peptide level."
  type: File?
  outputBinding:
    glob: $(inputs.in_peptide_file)
hints: []
cwlVersion: v1.1
baseCommand:
- ptmSummary.py
