#!/usr/bin/env cwl-runner

baseCommand:
- download_metaseq_example_data.py
class: CommandLineTool
cwlVersion: v1.0
id: download_metaseq_example_data.py
inputs:
- doc: Location to store downloaded and prepped data. Default is /tmp/tmpzhvnufo7/lib/python2.7/site-
    packages/metaseq/test/data
  id: data_dir
  inputBinding:
    prefix: --data-dir
  type: string
