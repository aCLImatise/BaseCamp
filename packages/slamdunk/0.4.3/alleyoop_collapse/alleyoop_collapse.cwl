class: CommandLineTool
id: alleyoop_collapse.cwl
inputs:
- id: in_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  inputBinding:
    prefix: --outputDir
- id: in_threads
  doc: "Thread number (default: 1)\n"
  type: long
  inputBinding:
    prefix: --threads
- id: in_t_count
  doc: Tcount file(s)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory for mapped BAM files.
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- alleyoop
- collapse
