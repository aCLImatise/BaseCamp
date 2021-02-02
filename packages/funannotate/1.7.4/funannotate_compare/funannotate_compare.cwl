class: CommandLineTool
id: funannotate_compare.cwl
inputs:
- id: in_input
  doc: List of funannotate genome folders or GBK files
  type: boolean
  inputBinding:
    prefix: --input
- id: in_out
  doc: 'Output folder name. Default: funannotate_compare'
  type: Directory
  inputBinding:
    prefix: --out
- id: in_database
  doc: 'Path to funannotate database. Default: $FUNANNOTATE_DB'
  type: boolean
  inputBinding:
    prefix: --database
- id: in_cpus
  doc: 'Number of CPUs to use. Default: 2'
  type: boolean
  inputBinding:
    prefix: --cpus
- id: in_run_dnds
  doc: Calculate dN/dS ratio on all orthologs. [estimate,full]
  type: boolean
  inputBinding:
    prefix: --run_dnds
- id: in_go_fdr
  doc: 'P-value for FDR GO-enrichment. Default: 0.05'
  type: boolean
  inputBinding:
    prefix: --go_fdr
- id: in_heat_map_stdev
  doc: 'Cut-off for heatmap. Default: 1.0'
  type: boolean
  inputBinding:
    prefix: --heatmap_stdev
- id: in_num_or_thos
  doc: 'Number of Single-copy orthologs to use for ML. Default: 500'
  type: boolean
  inputBinding:
    prefix: --num_orthos
- id: in_bootstrap
  doc: 'Number of boostrap replicates to run with RAxML. Default: 100'
  type: boolean
  inputBinding:
    prefix: --bootstrap
- id: in_out_group
  doc: 'Name of species to use for ML outgroup. Default: no outgroup'
  type: boolean
  inputBinding:
    prefix: --outgroup
- id: in_protein_ortho
  doc: ProteinOrtho5 POFF results.
  type: boolean
  inputBinding:
    prefix: --proteinortho
- id: in_ml_method
  doc: 'Maxmimum Liklihood method: Default: raxml [raxml,iqtree]'
  type: boolean
  inputBinding:
    prefix: --ml_method
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'Output folder name. Default: funannotate_compare'
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- funannotate
- compare
