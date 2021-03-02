class: CommandLineTool
id: rnftools_validate.cwl
inputs:
- id: in_fast_q
  doc: FASTQ file to be validated.
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_warnings_as_errors
  doc: Treat warnings as errors.
  type: boolean?
  inputBinding:
    prefix: --warnings-as-errors
- id: in_all_occurrences
  doc: "Report all occurrences of warnings and errors.\n"
  type: boolean?
  inputBinding:
    prefix: --all-occurrences
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rnftools
- validate
