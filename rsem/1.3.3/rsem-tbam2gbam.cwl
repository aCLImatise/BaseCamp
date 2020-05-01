#!/usr/bin/env cwl-runner

baseCommand:
- rsem-tbam2gbam
class: CommandLineTool
cwlVersion: v1.0
id: rsem-tbam2gbam
inputs:
- doc: ''
  id: reference_name
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: unsorted_transcript_bam_input
  inputBinding:
    position: 1
  type: string
- doc: ''
  id: genome_bam_output
  inputBinding:
    position: 2
  type: string
- doc: ''
  id: p
  inputBinding:
    prefix: -p
  type: string
