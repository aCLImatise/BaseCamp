class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/traitar_phenotype.cwl
inputs:
- id: gene_gff_type
  doc: if the input is amino acids the type of gene prediction GFF file can be specified
    for mapping the phenotype predictions to the genes
  type: string
  inputBinding:
    prefix: --gene_gff_type
- id: cpus
  doc: number of cpus used for the individual steps; maximum is number of samples;
    needs parallel
  type: string
  inputBinding:
    prefix: --cpus
- id: primary_models
  doc: primary phenotype models archive
  type: string
  inputBinding:
    prefix: --primary_models
- id: secondary_models
  doc: secondary phenotype models archive
  type: string
  inputBinding:
    prefix: --secondary_models
- id: rearrange_heat_map
  doc: recompute the phenotype heatmaps based on a subset of previously annotated
    and phenotyped samples
  type: string
  inputBinding:
    prefix: --rearrange_heatmap
- id: no_heat_map_sample_clustering
  doc: if option is set, don't cluster the phenotype heatmaps by samples and keep
    input ordering
  type: boolean
  inputBinding:
    prefix: --no_heatmap_sample_clustering
- id: no_heat_map_phenotype_clustering
  doc: if option is set, don't cluster the heatmaps by phenotype and keep input ordering
  type: boolean
  inputBinding:
    prefix: --no_heatmap_phenotype_clustering
- id: heat_map_format
  doc: choose file format for the heatmap
  type: string
  inputBinding:
    prefix: --heatmap_format
- id: output_dir
  doc: directory for the output; will be created if it doesn't exist yet
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- traitar
- phenotype
