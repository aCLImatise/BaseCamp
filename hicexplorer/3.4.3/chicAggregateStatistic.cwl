#!/usr/bin/env cwl-runner

baseCommand:
- chicAggregateStatistic
class: CommandLineTool
cwlVersion: v1.0
id: chicaggregatestatistic
inputs:
- doc: path to the interaction files which should be used for aggregation of the statistics.
  id: interaction_file
  inputBinding:
    prefix: --interactionFile
  type:
    items: long
    type: array
- doc: path to the target files which contains the target regions to prepare data
    for differential analysis.
  id: target_file
  inputBinding:
    prefix: --targetFile
  type:
    items: string
    type: array
- doc: turns on batch mode. The files provided by --interactionFile and/or --targetFile
    contain a list of the files to be processed.
  id: batch_mode
  inputBinding:
    prefix: --batchMode
  type: boolean
- doc: Number of threads (uses the python multiprocessing module).
  id: threads
  inputBinding:
    prefix: --threads
  type: string
