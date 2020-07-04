class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/pan_genome_core_alignment.cwl
inputs:
- id: output_filename
  doc: output filename [core_gene_alignment.aln]
  type: string
  inputBinding:
    prefix: -o
- id: cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: directory_containing_gene
  doc: directory containing gene multi-FASTAs [pan_genome_sequences]
  type: string
  inputBinding:
    prefix: -m
- id: gene_presence_spreadsheet
  doc: gene presence and absence spreadsheet [gene_presence_absence.csv]
  type: string
  inputBinding:
    prefix: -s
- id: allow_paralogs
  doc: allow paralogs
  type: boolean
  inputBinding:
    prefix: -p
- id: delete_intermediate_files
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -z
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_genome_core_alignment
