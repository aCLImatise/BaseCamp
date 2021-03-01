class: CommandLineTool
id: fastq_grep.cwl
inputs:
- id: in_id
  doc: match the read id (by default, sequence is matched)
  type: boolean?
  inputBinding:
    prefix: --id
- id: in_invert_match
  doc: select nonmatching entries
  type: boolean?
  inputBinding:
    prefix: --invert-match
- id: in_mismatches
  doc: output mismatching entries to the given file
  type: File?
  inputBinding:
    prefix: --mismatches
- id: in_count
  doc: output only the number of matching sequences
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_trim_after
  doc: trim output after the match end
  type: boolean?
  inputBinding:
    prefix: --trim_after
- id: in_trim_before
  doc: trim output before the match start
  type: boolean?
  inputBinding:
    prefix: --trim_before
- id: in_trim_match
  doc: trim the match itself, regardless of trimming mode
  type: boolean?
  inputBinding:
    prefix: --trim_match
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_mismatches
  doc: output mismatching entries to the given file
  type: File?
  outputBinding:
    glob: $(inputs.in_mismatches)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0
cwlVersion: v1.1
baseCommand:
- fastq-grep
