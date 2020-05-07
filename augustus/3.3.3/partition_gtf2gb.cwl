class: CommandLineTool
id: partition_gtf2gb.pl.cwl
inputs:
- id: source
  doc: 1..1367
  type: string
  inputBinding:
    position: 0
- id: cds
  doc: 107..402 /gene="170079668"
  type: string
  inputBinding:
    position: 1
- id: cds
  doc: complement(556..1332) /gene="170079669"
  type: string
  inputBinding:
    position: 2
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
