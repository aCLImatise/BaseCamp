#!/usr/bin/env cwl-runner

baseCommand:
- run_genome_evaluations.py
class: CommandLineTool
cwlVersion: v1.0
id: run_genome_evaluations.py
inputs:
- doc: directory containing one or more test datasets [REQUIRED]
  id: input_dir
  inputBinding:
    prefix: --input_dir
  type: string
- doc: reference tree that was used with make_test_datasets [REQUIRED]
  id: ref_tree
  inputBinding:
    prefix: --ref_tree
  type: string
