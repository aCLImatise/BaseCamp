class: CommandLineTool
id: chicAggregateStatistic.cwl
inputs:
- id: interaction_file
  doc: path to the interaction files which should be used for aggregation of the statistics.
  type: long[]
  inputBinding:
    prefix: --interactionFile
- id: target_file
  doc: path to the target files which contains the target regions to prepare data
    for differential analysis.
  type: string[]
  inputBinding:
    prefix: --targetFile
- id: batch_mode
  doc: turns on batch mode. The files provided by --interactionFile and/or --targetFile
    contain a list of the files to be processed.
  type: boolean
  inputBinding:
    prefix: --batchMode
- id: threads
  doc: Number of threads (uses the python multiprocessing module).
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- chicAggregateStatistic
