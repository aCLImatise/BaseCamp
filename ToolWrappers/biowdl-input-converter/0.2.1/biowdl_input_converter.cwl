class: CommandLineTool
id: biowdl_input_converter.cwl
inputs:
- id: in_output
  doc: "The output file to which the json is written. Default:\nstdout"
  type: File?
  inputBinding:
    prefix: --output
- id: in_validate
  doc: Do not generate output but only validate the
  type: boolean?
  inputBinding:
    prefix: --validate
- id: in_skip_file_check
  doc: Skip the checking if files in the samplesheet are
  type: boolean?
  inputBinding:
    prefix: --skip-file-check
- id: in_old
  doc: ''
  type: boolean?
  inputBinding:
    prefix: --old
- id: in_detected_dot
  doc: 'optional arguments:'
  type: string
  inputBinding:
    position: 1
- id: in_sample_sheet_dot
  doc: --old                 Output old style JSON as used in BioWDL germline-DNA
  type: string
  inputBinding:
    position: 2
- id: in_present_dot
  doc: --check-file-md5sums  Do a md5sum check for reads which have md5sums added
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "The output file to which the json is written. Default:\nstdout"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- biowdl-input-converter
