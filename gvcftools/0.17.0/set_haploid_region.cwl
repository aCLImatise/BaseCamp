#!/usr/bin/env cwl-runner

baseCommand:
- set_haploid_region
class: CommandLineTool
cwlVersion: v1.0
id: set_haploid_region
inputs:
- doc: A bed file specifying the regions to be converted  (required)
  id: region_file
  inputBinding:
    prefix: --region-file
  type: string
- doc: samtools reference sequence (required)
  id: ref
  inputBinding:
    prefix: --ref
  type: string
