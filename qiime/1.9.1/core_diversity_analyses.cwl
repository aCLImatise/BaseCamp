class: CommandLineTool
id: core_diversity_analyses.py.cwl
inputs:
- id: input_biom_fp
  doc: the input biom file [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_biom_fp
- id: output_dir
  doc: the output directory [REQUIRED]
  type: string
  inputBinding:
    prefix: --output_dir
- id: mapping_fp
  doc: the mapping filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: sampling_depth
  doc: Sequencing depth to use for even sub-sampling and maximum rarefaction depth.
    You should review the output of the 'biom summarize-table' command to decide on
    this value. [REQUIRED]
  type: string
  inputBinding:
    prefix: --sampling_depth
outputs: []
cwlVersion: v1.1
baseCommand:
- core_diversity_analyses.py
