class: CommandLineTool
id: DRAM.py_distill.cwl
inputs:
- id: in_input_file
  doc: 'Annotations path (default: None)'
  type: File?
  inputBinding:
    prefix: --input_file
- id: in_output_dir
  doc: 'Directory to write summarized genomes (default: None)'
  type: Directory?
  inputBinding:
    prefix: --output_dir
- id: in_rrna_path
  doc: 'rRNA output from annotation (default: None)'
  type: File?
  inputBinding:
    prefix: --rrna_path
- id: in_trna_path
  doc: 'tRNA output from annotation (default: None)'
  type: File?
  inputBinding:
    prefix: --trna_path
- id: in_group_by_column
  doc: "Column from annotations to group as organism units\n(default: fasta)"
  type: string?
  inputBinding:
    prefix: --groupby_column
- id: in_custom_distillate
  doc: "Custom distillate form to add your own modules\n(default: None)"
  type: string?
  inputBinding:
    prefix: --custom_distillate
- id: in_distillate_gene_names
  doc: "Give names of genes instead of counts in genome\nmetabolism summary (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --distillate_gene_names
- id: in_genomes_per_product
  doc: "Number of genomes per product.html output. Decrease\nvalue if getting JavaScript\
    \ Error: Maximum call stack\nsize exceeded when viewing product.html in browser.\n\
    (default: 1000)\n"
  type: long?
  inputBinding:
    prefix: --genomes_per_product
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dram:1.2.0--py_0
cwlVersion: v1.1
baseCommand:
- DRAM.py
- distill
