#!/usr/bin/env cwl-runner

baseCommand:
- cnx.py
class: CommandLineTool
cwlVersion: v1.0
id: cnx.py
inputs:
- doc: Input VCF file
  id: input
  inputBinding:
    position: 0
  type: string
- doc: Output file name (json format)
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: pass a BAM file for aligner name/version extraction
  id: bam
  inputBinding:
    prefix: --bam
  type: string
