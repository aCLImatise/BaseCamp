class: CommandLineTool
id: roary_query_pan_genome.cwl
inputs:
- id: g
  doc: groups filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -g
- id: a
  doc: action (union/intersection/complement/gene_multifasta/difference) [union]
  type: string
  inputBinding:
    prefix: -a
- id: c
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -c
- id: o
  doc: output filename [pan_genome_results]
  type: string
  inputBinding:
    prefix: -o
- id: n
  doc: comma separated list of gene names for use with gene_multifasta action
  type: string
  inputBinding:
    prefix: -n
- id: i
  doc: comma separated list of filenames, comparison set one
  type: string
  inputBinding:
    prefix: -i
- id: t
  doc: comma separated list of filenames, comparison set two
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- roary-query_pan_genome
