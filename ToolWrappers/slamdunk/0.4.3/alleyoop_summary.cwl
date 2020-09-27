class: CommandLineTool
id: alleyoop_summary.cwl
inputs:
- id: in_output
  doc: Output file
  type: File
  inputBinding:
    prefix: --output
- id: in_t_count_dir
  doc: "Folder containing tcount files\n"
  type: Directory
  inputBinding:
    prefix: --tcountDir
- id: in_bam
  doc: "Filtered BAM files (produced by slamdunk filter or\nall)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- alleyoop
- summary
