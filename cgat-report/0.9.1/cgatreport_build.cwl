class: CommandLineTool
id: cgatreport_build.cwl
inputs:
- id: num_jobs
  doc: number of parallel jobs to run [default=2]
  type: string
  inputBinding:
    prefix: --num-jobs
- id: verbose
  doc: loglevel. The higher, the more output [default=10]
  type: string
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- cgatreport-build
