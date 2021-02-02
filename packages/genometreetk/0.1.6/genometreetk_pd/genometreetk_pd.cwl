class: CommandLineTool
id: genometreetk_pd.cwl
inputs:
- id: in_per_tax_a_pg_file
  doc: "file to record phylogenetic gain of each ingroup taxa\nrelative to the outgroup"
  type: File
  inputBinding:
    prefix: --per_taxa_pg_file
- id: in_silent
  doc: suppress output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_tree
  doc: newick tree
  type: string
  inputBinding:
    position: 0
- id: in_tax_a_list
  doc: list of ingroup taxa, one per line, to calculated PD
  type: string
  inputBinding:
    position: 1
- id: in_over
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- genometreetk
- pd
