#!/usr/bin/env cwl-runner

baseCommand:
- metagenome_contributions.py
class: CommandLineTool
cwlVersion: v1.0
id: metagenome_contributions.py
inputs:
- doc: the input otu table in biom format [REQUIRED]
  id: input_otu_table
  inputBinding:
    prefix: --input_otu_table
  type: string
- doc: the output file for the metagenome contributions [REQUIRED]
  id: output_fp
  inputBinding:
    prefix: --output_fp
  type: string
