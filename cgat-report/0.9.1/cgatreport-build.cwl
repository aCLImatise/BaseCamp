#!/usr/bin/env cwl-runner

baseCommand:
- cgatreport-build
class: CommandLineTool
cwlVersion: v1.0
id: cgatreport-build
inputs:
- doc: number of parallel jobs to run [default=2]
  id: num_jobs
  inputBinding:
    prefix: --num-jobs
  type: string
- doc: loglevel. The higher, the more output [default=10]
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
