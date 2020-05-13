class: CommandLineTool
id: jackknifed_beta_diversity.py.cwl
inputs:
- id: otu_table_fp
  doc: the input OTU table in biom format [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: seqs_per_sample
  doc: number of sequences to include in each jackknifed subset [REQUIRED]
  type: string
  inputBinding:
    prefix: --seqs_per_sample
- id: mapping_fp
  doc: path to the mapping file [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- jackknifed_beta_diversity.py
