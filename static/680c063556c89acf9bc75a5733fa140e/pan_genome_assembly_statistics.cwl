class: CommandLineTool
id: ../../../pan_genome_assembly_statistics.cwl
inputs:
- id: number_of_threads
  doc: 'number of threads [1]        '
  type: long
  inputBinding:
    prefix: -p
- id: output_filename
  doc: output filename [assembly_statistics.csv]
  type: string
  inputBinding:
    prefix: -o
- id: cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double
  inputBinding:
    prefix: -cd
- id: verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
- id: print_version_exit
  doc: print version and exit
  type: boolean
  inputBinding:
    prefix: -w
- id: gene_presence_absence_dot_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pan_genome_assembly_statistics
