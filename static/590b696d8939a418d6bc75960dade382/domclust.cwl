class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/domclust.cwl
inputs:
- id: use_similarity_measure
  doc: use similarity as a measure of relatedness [on]
  type: boolean
  inputBinding:
    prefix: -S
- id: use_distance_disimilarity
  doc: use distance (or disimilarity) as a measure of relatedness
  type: boolean
  inputBinding:
    prefix: -d
- id: cutoff_scoredistance_can
  doc: '#    cutoff score/distance (can also be spcified as -S# or -d#) [60]'
  type: boolean
  inputBinding:
    prefix: -c
- id: ci
  doc: '#   cutoff score/distance among ingroup organisms'
  type: boolean
  inputBinding:
    prefix: -ci
- id: scoredistance_missing_relationships
  doc: '#    score/distance for missing relationships (m<c)'
  type: boolean
  inputBinding:
    prefix: -m
- id: mr
  doc: '#   specify a missing score as a ratio to c (0<mr<1) [0.95]'
  type: boolean
  inputBinding:
    prefix: -mr
- id: cutoff_score_domain
  doc: '#    cutoff score for domain split (c<=C)'
  type: boolean
  inputBinding:
    prefix: -C
- id: alignment_coverage_domain
  doc: '#    alignment coverage for domain split (0<=V<=1)'
  type: boolean
  inputBinding:
    prefix: -V
- id: minimum_organisms_clusters
  doc: '#    minimum # of organisms in clusters to be output [2]'
  type: boolean
  inputBinding:
    prefix: -n
- id: ne
  doc: '#   minimum # of entries in clusters to be output [2]'
  type: boolean
  inputBinding:
    prefix: -ne
- id: ratio_phylogenetic_pattern
  doc: '#    ratio of phylogenetic pattern overlap for tree cutting [0.5]'
  type: boolean
  inputBinding:
    prefix: -p
- id: homology_clustering_ie
  doc: homology clustering (i.e. skip the tree cutting)
  type: boolean
  inputBinding:
    prefix: -H
- id: ho
  doc: hierachical combination of homology/orthology clustering
  type: boolean
  inputBinding:
    prefix: -HO
- id: a_i
  doc: '#   member overlap for absorbing adjacent small clusters (0<=ai<=1)'
  type: boolean
  inputBinding:
    prefix: -ai
- id: ao
  doc: '#   member overlap for merging adjacent clusters (0<=ao<=ai)'
  type: boolean
  inputBinding:
    prefix: -ao
- id: use_tree_file
  doc: <fn> use a tree file for weighting related genomes
  type: boolean
  inputBinding:
    prefix: -t
- id: restore_dump_file
  doc: <fn> restore from dump file
  type: boolean
  inputBinding:
    prefix: -R
- id: output_format_default
  doc: '#    output format (default: 0:SimpleList) 1:Tree, 2:Newick, 3:Newick with
    length (when -d is specified), 4:Hierarchical, 5:ClusterTable, 6:Graph, 9:Table,
    10:Dump'
  type: boolean
  inputBinding:
    prefix: -o
- id: o_out_group
  doc: ',sp2,..  treat sp1,sp2,.. as outgroup'
  type: string
  inputBinding:
    prefix: -Ooutgroup
- id: o_horiz_weight
  doc: =#        relative weight for horiz. transfer (0<=x<=1)
  type: boolean
  inputBinding:
    prefix: -Ohorizweight
- id: o_output_score
  doc: =#        output score/distance at the root of each cluster
  type: boolean
  inputBinding:
    prefix: -OoutputScore
- id: o_meta
  doc: ',..          the specified genomes are treated as metagenomes'
  type: string
  inputBinding:
    prefix: -Ometa
- id: o_tax_map_out
  doc: =#          output taxonomy mapping of metagenomic data
  type: boolean
  inputBinding:
    prefix: -OtaxMapOut
- id: o_tax_map_spec
  doc: ',..    target species for taxonomy mapping [=meta]'
  type: string
  inputBinding:
    prefix: -OtaxMapSpec
- id: hom_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gene_tab
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- domclust
