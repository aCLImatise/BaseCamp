class: CommandLineTool
id: ../../../roary_unique_genes_per_sample.cwl
inputs:
- id: output_filename
  doc: output filename [unique_genes_per_sample.tsv]
  type: string
  inputBinding:
    prefix: -o
- id: clusters_filename
  doc: clusters filename [clustered_proteins]
  type: string
  inputBinding:
    prefix: -c
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- roary-unique_genes_per_sample
