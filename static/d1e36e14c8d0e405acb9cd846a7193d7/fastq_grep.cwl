class: CommandLineTool
id: fastq_grep.cwl
inputs:
- id: id
  doc: match the read id (by default, sequence is matched)
  type: boolean
  inputBinding:
    prefix: --id
- id: invert_match
  doc: select nonmatching entries
  type: boolean
  inputBinding:
    prefix: --invert-match
- id: mismatches
  doc: output mismatching entries to the given file
  type: File
  inputBinding:
    prefix: --mismatches
- id: count
  doc: output only the number of matching sequences
  type: boolean
  inputBinding:
    prefix: --count
- id: trim_after
  doc: trim output after the match end
  type: boolean
  inputBinding:
    prefix: --trim_after
- id: trim_before
  doc: trim output before the match start
  type: boolean
  inputBinding:
    prefix: --trim_before
- id: trim_match
  doc: trim the match itself, regardless of trimming mode
  type: boolean
  inputBinding:
    prefix: --trim_match
outputs: []
cwlVersion: v1.1
baseCommand:
- fastq-grep
