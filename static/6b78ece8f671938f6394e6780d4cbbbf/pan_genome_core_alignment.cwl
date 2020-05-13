class: CommandLineTool
id: pan_genome_core_alignment.cwl
inputs:
- id: o
  doc: output filename [core_gene_alignment.aln]
  type: string
  inputBinding:
    prefix: -o
- id: cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: m
  doc: directory containing gene multi-FASTAs [pan_genome_sequences]
  type: string
  inputBinding:
    prefix: -m
- id: s
  doc: gene presence and absence spreadsheet [gene_presence_absence.csv]
  type: string
  inputBinding:
    prefix: -s
- id: p
  doc: allow paralogs
  type: boolean
  inputBinding:
    prefix: -p
- id: z
  doc: dont delete intermediate files
  type: boolean
  inputBinding:
    prefix: -z
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_genome_core_alignment
