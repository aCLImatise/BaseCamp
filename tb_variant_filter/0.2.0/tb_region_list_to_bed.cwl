#!/usr/bin/env cwl-runner

baseCommand:
- tb_region_list_to_bed
class: CommandLineTool
cwlVersion: v1.0
id: tb_region_list_to_bed
inputs:
- doc: File to write output to
  id: output_file
  inputBinding:
    position: 0
  type: string
- doc: Chromosome name to use in BED
  id: chromosome_name
  inputBinding:
    prefix: --chromosome_name
  type: string
