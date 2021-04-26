class: CommandLineTool
id: augur_titers_sub.cwl
inputs:
- id: in_titers
  doc: file with titer measurements
  type: string[]
  inputBinding:
    prefix: --titers
- id: in_alignment
  doc: "sequence to be used in the substitution model,\nsupplied as fasta files"
  type: string[]
  inputBinding:
    prefix: --alignment
- id: in_gene_names
  doc: "names of the sequences in the alignment, same order\nassumed"
  type: string[]
  inputBinding:
    prefix: --gene-names
- id: in_tree
  doc: optional tree to annotate fit titer model to
  type: string?
  inputBinding:
    prefix: --tree
- id: in_allow_empty_model
  doc: allow model to be empty
  type: boolean?
  inputBinding:
    prefix: --allow-empty-model
- id: in_output
  doc: "JSON file to save titer model\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:12.0.0--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- augur
- titers
- sub
