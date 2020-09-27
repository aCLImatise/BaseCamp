class: CommandLineTool
id: cgatreport_build.cwl
inputs:
- id: in_num_jobs
  doc: number of parallel jobs to run [default=2]
  type: long
  inputBinding:
    prefix: --num-jobs
- id: in_verbose
  doc: "loglevel. The higher, the more output [default=10]\n"
  type: long
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cgatreport-build
