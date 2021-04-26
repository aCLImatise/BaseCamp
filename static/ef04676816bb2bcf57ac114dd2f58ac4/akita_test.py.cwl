class: CommandLineTool
id: akita_test.py.cwl
inputs:
- id: in_a_i
  doc: "Comma-separated list of target indexes to make\naccuracy scatter plots."
  type: string?
  inputBinding:
    prefix: --ai
- id: in_head
  doc: 'Parameters head to test [Default: 0]'
  type: long?
  inputBinding:
    prefix: --head
- id: in_mc
  doc: 'Monte carlo test iterations [Default: 0]'
  type: long?
  inputBinding:
    prefix: --mc
- id: in_peaks
  doc: 'Compute expensive peak accuracy [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --peaks
- id: in_output_directory_defaulttestout
  doc: "Output directory for test statistics [Default:\ntest_out]"
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_rc
  doc: 'Average the fwd and rc predictions [Default: False]'
  type: boolean?
  inputBinding:
    prefix: --rc
- id: in_save
  doc: "Save targets and predictions numpy arrays [Default:\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --save
- id: in_shifts
  doc: 'Ensemble prediction shifts [Default: 0]'
  type: long?
  inputBinding:
    prefix: --shifts
- id: in_file_specifying_indexes
  doc: File specifying target indexes and labels in table
  type: File?
  inputBinding:
    prefix: -t
- id: in_tfr
  doc: "TFR pattern string appended to data_dir/tfrecords for\nsubsetting [Default:\
    \ none]\n"
  type: string?
  inputBinding:
    prefix: --tfr
- id: in_format
  doc: '--split=SPLIT_LABEL   Dataset split label for eg TFR pattern [Default: test]'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory_defaulttestout
  doc: "Output directory for test statistics [Default:\ntest_out]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory_defaulttestout)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- akita_test.py
