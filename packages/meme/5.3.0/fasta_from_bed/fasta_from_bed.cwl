class: CommandLineTool
id: fasta_from_bed.cwl
inputs:
- id: in_fast_a_from_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_bed_file
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_genome_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
- id: in_index_filename
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_fast_a_output_filename
  doc: ''
  type: File
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_fast_a_output_filename
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_fast_a_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0
cwlVersion: v1.1
baseCommand:
- fasta-from-bed
