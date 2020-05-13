class: CommandLineTool
id: alleyoop_summary.cwl
inputs:
- id: bam
  doc: Filtered BAM files (produced by slamdunk filter or all)
  type: string
  inputBinding:
    position: 0
- id: output
  doc: Output file
  type: string
  inputBinding:
    prefix: --output
- id: t_count_dir
  doc: Folder containing tcount files
  type: string
  inputBinding:
    prefix: --tcountDir
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- summary
