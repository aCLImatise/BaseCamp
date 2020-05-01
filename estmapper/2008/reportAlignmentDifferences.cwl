#!/usr/bin/env cwl-runner

baseCommand:
- reportAlignmentDifferences
class: CommandLineTool
cwlVersion: v1.0
id: reportalignmentdifferences
inputs:
- doc: -i Q.best.sim4db -o Q
  id: report_alignment_differences
  inputBinding:
    position: 0
  type: string
