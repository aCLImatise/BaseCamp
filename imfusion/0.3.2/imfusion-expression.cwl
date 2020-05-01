#!/usr/bin/env cwl-runner

baseCommand:
- imfusion-expression
class: CommandLineTool
cwlVersion: v1.0
id: imfusion-expression
inputs:
- doc: Generate counts by counting fragments instead of reads (for paired-end data).
  id: paired
  inputBinding:
    prefix: --paired
  type: boolean
- doc: Strandedness of the RNA-seq data.
  id: stranded
  inputBinding:
    prefix: --stranded
  type: string
