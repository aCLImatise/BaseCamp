#!/usr/bin/env cwl-runner

baseCommand:
- metawatt
class: CommandLineTool
cwlVersion: v1.0
id: metawatt
inputs:
- doc: '[number of threads/processors]'
  id: threads
  inputBinding:
    prefix: --threads
  type: boolean
- doc: '[temp folder used]'
  id: temp_folder
  inputBinding:
    prefix: --temp-folder
  type: boolean
- doc: '[relative weight of differential coverage scores versus tetranucleotide scores]'
  id: cov_rel_weight
  inputBinding:
    prefix: --cov-rel-weight
  type: boolean
- doc: (do not update databases)
  id: skip_database_update
  inputBinding:
    prefix: --skip-database-update
  type: boolean
- doc: (check dependencies and exit)
  id: check_dependencies
  inputBinding:
    prefix: --check-dependencies
  type: boolean
