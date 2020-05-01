#!/usr/bin/env cwl-runner

baseCommand:
- domclust
class: CommandLineTool
cwlVersion: v1.0
id: domclust
inputs:
- doc: use similarity as a measure of relatedness [on]
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: use distance (or disimilarity) as a measure of relatedness
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '#    cutoff score/distance (can also be spcified as -S# or -d#) [60]'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '#   cutoff score/distance among ingroup organisms'
  id: ci
  inputBinding:
    prefix: -ci
  type: boolean
- doc: '#    score/distance for missing relationships (m<c)'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '#   specify a missing score as a ratio to c (0<mr<1) [0.95]'
  id: mr
  inputBinding:
    prefix: -mr
  type: boolean
- doc: '#    cutoff score for domain split (c<=C)'
  id: c
  inputBinding:
    prefix: -C
  type: boolean
- doc: '#    alignment coverage for domain split (0<=V<=1)'
  id: v
  inputBinding:
    prefix: -V
  type: boolean
- doc: '#    minimum # of organisms in clusters to be output [2]'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '#   minimum # of entries in clusters to be output [2]'
  id: ne
  inputBinding:
    prefix: -ne
  type: boolean
- doc: '#    ratio of phylogenetic pattern overlap for tree cutting [0.5]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: homology clustering (i.e. skip the tree cutting)
  id: h
  inputBinding:
    prefix: -H
  type: boolean
- doc: hierachical combination of homology/orthology clustering
  id: ho
  inputBinding:
    prefix: -HO
  type: boolean
- doc: '#   member overlap for absorbing adjacent small clusters (0<=ai<=1)'
  id: a_i
  inputBinding:
    prefix: -ai
  type: boolean
- doc: '#   member overlap for merging adjacent clusters (0<=ao<=ai)'
  id: ao
  inputBinding:
    prefix: -ao
  type: boolean
- doc: <fn> use a tree file for weighting related genomes
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: <fn> restore from dump file
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: '#    output format (default: 0:SimpleList) 1:Tree, 2:Newick, 3:Newick with
    length (when -d is specified), 4:Hierarchical, 5:ClusterTable, 6:Graph, 9:Table,
    10:Dump'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: ',sp2,..  treat sp1,sp2,.. as outgroup'
  id: o_out_group
  inputBinding:
    prefix: -Ooutgroup
  type: string
- doc: =#        relative weight for horiz. transfer (0<=x<=1)
  id: o_horiz_weight
  inputBinding:
    prefix: -Ohorizweight
  type: boolean
- doc: =#        output score/distance at the root of each cluster
  id: o_output_score
  inputBinding:
    prefix: -OoutputScore
  type: boolean
- doc: ',..          the specified genomes are treated as metagenomes'
  id: o_meta
  inputBinding:
    prefix: -Ometa
  type: string
- doc: =#          output taxonomy mapping of metagenomic data
  id: o_tax_map_out
  inputBinding:
    prefix: -OtaxMapOut
  type: boolean
- doc: ',..    target species for taxonomy mapping [=meta]'
  id: o_tax_map_spec
  inputBinding:
    prefix: -OtaxMapSpec
  type: string
