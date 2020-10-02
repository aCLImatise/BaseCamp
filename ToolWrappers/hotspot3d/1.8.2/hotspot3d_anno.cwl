class: CommandLineTool
id: hotspot3d_anno.cwl
inputs:
- id: in_output_dir
  doc: Output directory of proximity files
  type: Directory
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory of proximity files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- hotspot3d
- anno
