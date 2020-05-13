class: CommandLineTool
id: planemo_ci_find_tools.cwl
inputs:
- id: exclude
  doc: Paths to exclude.
  type: File
  inputBinding:
    prefix: --exclude
- id: exclude_from
  doc: File of paths to exclude.
  type: File
  inputBinding:
    prefix: --exclude_from
- id: changed_in_commit_range
  doc: Exclude paths unchanged in git commit range.
  type: string
  inputBinding:
    prefix: --changed_in_commit_range
- id: chunk_count
  doc: Split output into chunks of this many item and print --chunk such group.
  type: long
  inputBinding:
    prefix: --chunk_count
- id: chunk
  doc: When output is split into --chunk_count groups, output the group 0-indexedby
    this option.
  type: long
  inputBinding:
    prefix: --chunk
- id: output
  doc: File to output to, or - for standard output.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- ci_find_tools
