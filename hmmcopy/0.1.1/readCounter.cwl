#!/usr/bin/env cwl-runner

baseCommand:
- readCounter
class: CommandLineTool
cwlVersion: v1.0
id: readcounter
inputs:
- doc: ''
  id: bam_file
  inputBinding:
    position: 0
  type: string
- doc: Outputs in SEG format
  id: seg
  inputBinding:
    prefix: --seg
  type: boolean
- doc: Specify the size of non-overlapping windows [1000]
  id: window
  inputBinding:
    prefix: --window
  type: long
- doc: Specify the mapping quality value below which reads are ignored
  id: quality
  inputBinding:
    prefix: --quality
  type: long
- doc: List all chromosomes in BAM reference file
  id: list
  inputBinding:
    prefix: --list
  type: boolean
- doc: Specify the entries and order of sequences to analyze [ALL], the <string> should
    be a comma-delimited list (NO spaces)
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
- doc: Build BAM index for file (same index format as SAMtools)
  id: build
  inputBinding:
    prefix: --build
  type: boolean
