class: CommandLineTool
id: ../../../roary_query_pan_genome.cwl
inputs:
- id: groups_filename
  doc: groups filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -g
- id: action_unionintersectioncomplementgenemultifastadifference
  doc: action (union/intersection/complement/gene_multifasta/difference) [union]
  type: string
  inputBinding:
    prefix: -a
- id: percentage_isolates_gene
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -c
- id: output_filename
  doc: output filename [pan_genome_results]
  type: string
  inputBinding:
    prefix: -o
- id: comma_separated_list
  doc: comma separated list of gene names for use with gene_multifasta action
  type: string
  inputBinding:
    prefix: -n
- id: comma_separated_one
  doc: comma separated list of filenames, comparison set one
  type: string
  inputBinding:
    prefix: -i
- id: comma_separated_two
  doc: comma separated list of filenames, comparison set two
  type: string
  inputBinding:
    prefix: -t
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: query_pan_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- roary-query_pan_genome
