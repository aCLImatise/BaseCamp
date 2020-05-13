class: CommandLineTool
id: gemBS_map_report.cwl
inputs:
- id: project
  doc: Output title for report (project name)
  type: string
  inputBinding:
    prefix: --project
- id: output_dir
  doc: Output directory to store html mapping report.
  type: File
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- map-report
