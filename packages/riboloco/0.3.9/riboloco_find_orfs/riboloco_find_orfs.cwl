class: CommandLineTool
id: riboloco_find_orfs.cwl
inputs:
- id: in_fast_a
  doc: "Transciptome fasta - can be generated with\nriboloco_convert_gff"
  type: string?
  inputBinding:
    prefix: --fasta
- id: in_info
  doc: "A info file with transcript details - can also be\ngenerated with riboloco_convert_gff"
  type: File?
  inputBinding:
    prefix: --info
- id: in_output_directory
  doc: The directory to save outputs.
  type: Directory?
  inputBinding:
    prefix: --output_directory
- id: in_output_file
  doc: "Output file\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_optional_arguments
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: The directory to save outputs.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
- id: out_output_file
  doc: "Output file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/riboloco:0.3.9--pyh5e36f6f_0
cwlVersion: v1.1
baseCommand:
- riboloco_find_orfs
