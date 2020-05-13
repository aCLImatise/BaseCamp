class: CommandLineTool
id: scale_metagenome.py.cwl
inputs:
- id: input_seq_depth_file
  doc: an input tab-delimited table, with samples as the first column and an integer
    sequencing depth as the second [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_seq_depth_file
- id: input_count_table
  doc: the input trait counts on per otu basis in biom format (can be gzipped) [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_count_table
- id: output_meta_genome_table
  doc: the output file for the scaled metagenome [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_metagenome_table
outputs: []
cwlVersion: v1.1
baseCommand:
- scale_metagenome.py
