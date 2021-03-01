class: CommandLineTool
id: planemo_ci_find_repos.cwl
inputs:
- id: in_exclude
  doc: Paths to exclude.
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_exclude_from
  doc: File of paths to exclude.
  type: File?
  inputBinding:
    prefix: --exclude_from
- id: in_changed_in_commit_range
  doc: Exclude paths unchanged in git commit range.
  type: string?
  inputBinding:
    prefix: --changed_in_commit_range
- id: in_chunk_count
  doc: "Split output into chunks of this many item\nand print --chunk such group."
  type: long?
  inputBinding:
    prefix: --chunk_count
- id: in_chunk
  doc: "When output is split into --chunk_count\ngroups, output the group 0-indexedby\
    \ this\noption."
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_output
  doc: File to output to, or - for standard output.
  type: File?
  inputBinding:
    prefix: --output
- id: in_file_dot
  doc: 'Options:'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: File to output to, or - for standard output.
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- ci_find_repos
