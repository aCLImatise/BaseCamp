class: CommandLineTool
id: funannotate_util_compare.cwl
inputs:
- id: compare
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: input
  doc: List of funannotate genome folders or GBK files
  type: boolean
  inputBinding:
    prefix: --input
- id: out
  doc: 'Output folder name. Default: funannotate_compare'
  type: boolean
  inputBinding:
    prefix: --out
- id: database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean
  inputBinding:
    prefix: --database
- id: cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: run_dnds
  doc: Calculate dN/dS ratio on all orthologs. [estimate,full]
  type: boolean
  inputBinding:
    prefix: --run_dnds
- id: go_fdr
  doc: 'P-value for FDR GO-enrichment. Default: 0.05'
  type: boolean
  inputBinding:
    prefix: --go_fdr
- id: heat_map_stdev
  doc: 'Cut-off for heatmap. Default: 1.0'
  type: boolean
  inputBinding:
    prefix: --heatmap_stdev
- id: num_or_thos
  doc: 'Number of Single-copy orthologs to use for ML. Default: 500'
  type: boolean
  inputBinding:
    prefix: --num_orthos
- id: bootstrap
  doc: 'Number of boostrap replicates to run with RAxML. Default: 100'
  type: boolean
  inputBinding:
    prefix: --bootstrap
- id: out_group
  doc: 'Name of species to use for ML outgroup. Default: no outgroup'
  type: boolean
  inputBinding:
    prefix: --outgroup
- id: protein_ortho
  doc: ProteinOrtho5 POFF results.
  type: boolean
  inputBinding:
    prefix: --proteinortho
- id: ml_method
  doc: 'Maxmimum Liklihood method: Default: raxml [raxml,iqtree]         '
  type: boolean
  inputBinding:
    prefix: --ml_method
outputs: []
cwlVersion: v1.1
baseCommand:
- funannotate
- util
- compare
