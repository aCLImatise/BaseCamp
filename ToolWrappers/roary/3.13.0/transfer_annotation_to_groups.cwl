class: CommandLineTool
id: transfer_annotation_to_groups.cwl
inputs:
- id: in_output_filename
  doc: output filename [reannotated_groups]
  type: File
  inputBinding:
    prefix: -o
- id: in_clusters_filename
  doc: clusters filename [clustered_proteins]
  type: File
  inputBinding:
    prefix: -g
- id: in_verbose_output_stdout
  doc: verbose output to STDOUT
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: output filename [reannotated_groups]
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename)
cwlVersion: v1.1
baseCommand:
- transfer_annotation_to_groups
