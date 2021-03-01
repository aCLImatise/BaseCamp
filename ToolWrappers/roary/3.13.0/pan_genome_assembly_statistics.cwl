class: CommandLineTool
id: pan_genome_assembly_statistics.cwl
inputs:
- id: in_number_of_threads
  doc: number of threads [1]
  type: long?
  inputBinding:
    prefix: -p
- id: in_output_filename
  doc: output filename [assembly_statistics.csv]
  type: File?
  inputBinding:
    prefix: -o
- id: in_cd
  doc: percentage of isolates a gene must be in to be core [99]
  type: double?
  inputBinding:
    prefix: -cd
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_version_exit
  doc: print version and exit
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_gene_presence_absence_dot_csv
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output filename [assembly_statistics.csv]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- pan_genome_assembly_statistics
