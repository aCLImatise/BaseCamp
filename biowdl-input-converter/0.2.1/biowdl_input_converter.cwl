class: CommandLineTool
id: biowdl_input_converter.cwl
inputs:
- id: sample_sheet
  doc: The input samplesheet. Format will be automatically detected.
  type: string
  inputBinding:
    position: 0
- id: output
  doc: 'The output file to which the json is written. Default: stdout'
  type: string
  inputBinding:
    prefix: --output
- id: validate
  doc: Do not generate output but only validate the samplesheet.
  type: boolean
  inputBinding:
    prefix: --validate
- id: old
  doc: Output old style JSON as used in BioWDL germline-DNA and RNA-seq version 1
    pipelines
  type: boolean
  inputBinding:
    prefix: --old
- id: skip_file_check
  doc: Skip the checking if files in the samplesheet are present.
  type: boolean
  inputBinding:
    prefix: --skip-file-check
- id: check_file_md5sums
  doc: Do a md5sum check for reads which have md5sums added in the samplesheet.
  type: boolean
  inputBinding:
    prefix: --check-file-md5sums
outputs: []
cwlVersion: v1.1
baseCommand:
- biowdl-input-converter
