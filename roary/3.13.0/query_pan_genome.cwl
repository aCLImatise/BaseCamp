#!/usr/bin/env cwl-runner

baseCommand:
- query_pan_genome
class: CommandLineTool
cwlVersion: v1.0
id: query_pan_genome
inputs:
- doc: groups filename [clustered_proteins]
  id: g
  inputBinding:
    prefix: -g
  type: string
- doc: action (union/intersection/complement/gene_multifasta/difference) [union]
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: percentage of isolates a gene must be in to be core [99]
  id: c
  inputBinding:
    prefix: -c
  type: double
- doc: output filename [pan_genome_results]
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: comma separated list of gene names for use with gene_multifasta action
  id: n
  inputBinding:
    prefix: -n
  type: string
- doc: comma separated list of filenames, comparison set one
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: comma separated list of filenames, comparison set two
  id: t
  inputBinding:
    prefix: -t
  type: string
- doc: verbose output to STDOUT
  id: v
  inputBinding:
    prefix: -v
  type: boolean
