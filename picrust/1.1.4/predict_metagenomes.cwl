#!/usr/bin/env cwl-runner

baseCommand:
- predict_metagenomes.py
class: CommandLineTool
cwlVersion: v1.0
id: predict_metagenomes.py
inputs:
- doc: the input otu table in biom format [REQUIRED]
  id: input_otu_table
  inputBinding:
    prefix: --input_otu_table
  type: string
- doc: the output file for the predicted metagenome [REQUIRED]
  id: output_meta_genome_table
  inputBinding:
    prefix: --output_metagenome_table
  type: string
