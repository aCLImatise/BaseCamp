class: CommandLineTool
id: run_genome_evaluations.py.cwl
inputs:
- id: input_dir
  doc: directory containing one or more test datasets [REQUIRED]
  type: string
  inputBinding:
    prefix: --input_dir
- id: ref_tree
  doc: reference tree that was used with make_test_datasets [REQUIRED]
  type: string
  inputBinding:
    prefix: --ref_tree
outputs: []
cwlVersion: v1.1
baseCommand:
- run_genome_evaluations.py
