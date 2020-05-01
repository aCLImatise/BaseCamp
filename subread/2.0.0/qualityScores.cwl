#!/usr/bin/env cwl-runner

baseCommand:
- qualityScores
class: CommandLineTool
cwlVersion: v1.0
id: qualityscores
inputs:
- doc: Name of input file including read data. The default format is Fastq.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: Name of output file that is a text file including Phred scores for each read
    base.
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: <33|64> refer to subread aligner.
  id: phred_offset
  inputBinding:
    prefix: --phred-offset
  type: boolean
