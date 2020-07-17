class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/rnftools_validate.cwl
inputs:
- id: fast_q
  doc: FASTQ file to be validated.
  type: File
  inputBinding:
    prefix: --fastq
- id: warnings_as_errors
  doc: Treat warnings as errors.
  type: boolean
  inputBinding:
    prefix: --warnings-as-errors
- id: all_occurrences
  doc: Report all occurrences of warnings and errors.
  type: boolean
  inputBinding:
    prefix: --all-occurrences
outputs: []
cwlVersion: v1.1
baseCommand:
- rnftools
- validate
