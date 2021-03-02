class: CommandLineTool
id: faithpd.cwl
inputs:
- id: in_input_biom_table
  doc: The input BIOM table.
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_input_phylogeny_newick
  doc: The input phylogeny in newick.
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_the_output_series
  doc: The output series.
  type: boolean?
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/unifrac:0.20.2--py37hfa133b6_0
cwlVersion: v1.1
baseCommand:
- faithpd
