class: CommandLineTool
id: phyluce_utilities_combine_reads.cwl
inputs:
- id: in_config
  doc: The configuration file for reads we are combining
  type: File
  inputBinding:
    prefix: --config
- id: in_output
  doc: The configuration file for reads we are combining
  type: File
  inputBinding:
    prefix: --output
- id: in_subfolder
  doc: "A subdirectory, below the level of the group,\ncontaining the reads\n"
  type: string
  inputBinding:
    prefix: --subfolder
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- phyluce_utilities_combine_reads
