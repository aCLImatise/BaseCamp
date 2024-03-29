class: CommandLineTool
id: roary_query_pan_genome.cwl
inputs:
- id: in_groups_filename
  doc: groups filename [clustered_proteins]
  type: File?
  inputBinding:
    prefix: -g
- id: in_action_unionintersectioncomplementgenemultifastadifference
  doc: action (union/intersection/complement/gene_multifasta/difference) [union]
  type: string?
  inputBinding:
    prefix: -a
- id: in_percentage_isolates_gene
  doc: percentage of isolates a gene must be in to be core [99]
  type: double?
  inputBinding:
    prefix: -c
- id: in_output_filename
  doc: output filename [pan_genome_results]
  type: File?
  inputBinding:
    prefix: -o
- id: in_comma_separated_list
  doc: comma separated list of gene names for use with gene_multifasta action
  type: string?
  inputBinding:
    prefix: -n
- id: in_comma_list_one
  doc: comma separated list of filenames, comparison set one
  type: string?
  inputBinding:
    prefix: -i
- id: in_comma_list_two
  doc: comma separated list of filenames, comparison set two
  type: string?
  inputBinding:
    prefix: -t
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_query_pan_genome
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output filename [pan_genome_results]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- roary-query_pan_genome
