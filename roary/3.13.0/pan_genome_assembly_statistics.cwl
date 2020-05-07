class: CommandLineTool
id: pan_genome_assembly_statistics.cwl
inputs:
- id: gene_presence_absence_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: p
  doc: 'number of threads [1]        '
  type: long
  inputBinding:
    prefix: -p
- id: o
  doc: output filename [assembly_statistics.csv]
  type: string
  inputBinding:
    prefix: -o
- id: cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: v
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: w
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_genome_assembly_statistics
