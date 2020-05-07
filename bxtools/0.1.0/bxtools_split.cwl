class: CommandLineTool
id: bxtools_split.cwl
inputs:
- id: verbose
  doc: 'Select verbosity level (0-4). Default: 0 '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: analysis_id
  doc: ID to prefix output files with [foo]
  type: boolean
  inputBinding:
    prefix: --analysis-id
- id: no_output
  doc: Don't output BAMs (count only) [off]
  type: boolean
  inputBinding:
    prefix: --no-output
- id: min_reads
  doc: Minumum reads of given tag to see before writing [0]
  type: boolean
  inputBinding:
    prefix: --min-reads
- id: tag
  doc: Split by a tag other than BX (e.g. MI)
  type: boolean
  inputBinding:
    prefix: --tag
outputs: []
cwlVersion: v1.1
baseCommand:
- bxtools
- split
