class: CommandLineTool
id: gemBS_call_report.cwl
inputs:
- id: project
  doc: Output title for report (project name)
  type: string
  inputBinding:
    prefix: --project
- id: output_dir
  doc: Output directory to store html and Sphinx Variants report.
  type: File
  inputBinding:
    prefix: --output-dir
- id: threads
  doc: Number of jobs to run in parallel.
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- gemBS
- call-report
