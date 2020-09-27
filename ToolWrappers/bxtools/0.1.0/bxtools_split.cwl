class: CommandLineTool
id: bxtools_split.cwl
inputs:
- id: in_verbose
  doc: 'Select verbosity level (0-4). Default: 0'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_analysis_id
  doc: ID to prefix output files with [foo]
  type: boolean
  inputBinding:
    prefix: --analysis-id
- id: in_no_output
  doc: Don't output BAMs (count only) [off]
  type: boolean
  inputBinding:
    prefix: --no-output
- id: in_min_reads
  doc: Minumum reads of given tag to see before writing [0]
  type: boolean
  inputBinding:
    prefix: --min-reads
- id: in_tag
  doc: Split by a tag other than BX (e.g. MI)
  type: boolean
  inputBinding:
    prefix: --tag
- id: in_bam_slash_sam_slash_cram
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bxtools
- split
