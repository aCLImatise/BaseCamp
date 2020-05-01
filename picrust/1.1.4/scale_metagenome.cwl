#!/usr/bin/env cwl-runner

baseCommand:
- scale_metagenome.py
class: CommandLineTool
cwlVersion: v1.0
id: scale_metagenome.py
inputs:
- doc: an input tab-delimited table, with samples as the first column and an integer
    sequencing depth as the second [REQUIRED]
  id: input_seq_depth_file
  inputBinding:
    prefix: --input_seq_depth_file
  type: string
- doc: the input trait counts on per otu basis in biom format (can be gzipped) [REQUIRED]
  id: input_count_table
  inputBinding:
    prefix: --input_count_table
  type: string
- doc: the output file for the scaled metagenome [REQUIRED]
  id: output_meta_genome_table
  inputBinding:
    prefix: --output_metagenome_table
  type: string
