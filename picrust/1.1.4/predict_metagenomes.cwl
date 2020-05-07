class: CommandLineTool
id: predict_metagenomes.py.cwl
inputs:
- id: input_otu_table
  doc: the input otu table in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_otu_table
- id: output_meta_genome_table
  doc: the output file for the predicted metagenome [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_metagenome_table
outputs: []
cwlVersion: v1.1
baseCommand:
- predict_metagenomes.py
