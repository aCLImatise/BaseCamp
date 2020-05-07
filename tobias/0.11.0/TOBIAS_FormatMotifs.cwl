class: CommandLineTool
id: TOBIAS_FormatMotifs.cwl
inputs:
- id: input
  doc: '[ [ ...]]  One or more input motif files (required)'
  type: boolean
  inputBinding:
    prefix: --input
- id: output
  doc: If task == join, output is the joined output file; if task == split, output
    is a directory (required)
  type: boolean
  inputBinding:
    prefix: --output
- id: format
  doc: 'Desired motif output format (pfm, jaspar, meme) (default: "jaspar")'
  type: boolean
  inputBinding:
    prefix: --format
- id: task
  doc: 'Which task to perform on motif files (join/split) (default: join)'
  type: boolean
  inputBinding:
    prefix: --task
- id: filter
  doc: File containing list of motif names/ids to filter on. Only motifs fitting entries
    in filter will be output.
  type: boolean
  inputBinding:
    prefix: --filter
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- FormatMotifs
