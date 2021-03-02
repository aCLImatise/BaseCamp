class: CommandLineTool
id: GenomeOntology.pl.cwl
inputs:
- id: in_g_size
  doc: <#> (Genome size used for significance calculations)
  type: boolean?
  inputBinding:
    prefix: -gsize
- id: in_bg
  doc: "(Performs additional significance calculations\nrelative to Control Peaks/Tags)\n"
  type: File?
  inputBinding:
    prefix: -bg
- id: in_peak_file_slash_tag_directory
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 2
- id: in_additional
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- GenomeOntology.pl
