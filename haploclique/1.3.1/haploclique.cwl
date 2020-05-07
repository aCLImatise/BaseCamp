class: CommandLineTool
id: haploclique.cwl
inputs:
- id: clever
  doc: use the original clever clique finder
  type: string
  inputBinding:
    position: 0
- id: bronk_er_bosch
  doc: use the Bron-Kerbosch based clique finder
  type: string
  inputBinding:
    position: 1
- id: gff
  doc: Option to create GFF File from output. <output> is used as prefix.
  type: boolean
  inputBinding:
    prefix: --gff
- id: bam
  doc: Option to create BAM File from output. <output> is used as prefix.
  type: boolean
  inputBinding:
    prefix: --bam
- id: max_cliques
  doc: Set a threshold for the maximal number of cliques which should be considered
    in the next iteration.
  type: string
  inputBinding:
    prefix: --max_cliques
- id: limit_clique_size
  doc: Set a threshold to limit the size of cliques.
  type: string
  inputBinding:
    prefix: --limit_clique_size
outputs: []
cwlVersion: v1.1
baseCommand:
- haploclique
