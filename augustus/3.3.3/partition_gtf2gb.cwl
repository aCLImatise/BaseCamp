class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/partition_gtf2gb.pl.cwl
inputs:
- id: min_cluster_size
  doc: minimal number of genes in a one cluster,  default n=20
  type: string
  inputBinding:
    prefix: --minClusterSize
- id: max_flanking_region_size
  doc: maximal size of flanking intergenic region to be  excised around clusters of
    genes, default n=2000
  type: string
  inputBinding:
    prefix: --maxFlankingRegionSize
- id: verbose
  doc: print verbose warning messages
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- partition_gtf2gb.pl
