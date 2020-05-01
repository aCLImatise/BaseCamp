#!/usr/bin/env cwl-runner

baseCommand:
- split_Bed_into_equal_regions.py
class: CommandLineTool
cwlVersion: v1.0
id: split_bed_into_equal_regions.py
inputs:
- doc: 'Input merged BED file (default: None)'
  id: input_file
  inputBinding:
    prefix: --input-file
  type: string
- doc: '1 (default: 1)'
  id: num_of_files
  inputBinding:
    prefix: --num-of-files
  type: string
- doc: "Output BED file (default: <_io.TextIOWrapper name='<stdout>' mode='w' encoding='UTF-8'>)"
  id: output_files
  inputBinding:
    prefix: --output-files
  type: string
