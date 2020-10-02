class: CommandLineTool
id: analyze.cwl
inputs:
- id: in_report_wrong_classified
  doc: ': report wrong classified patterns (default)'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_report_right_classified
  doc: ': report right classified patterns'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_report_unclassified_patterns
  doc: ': report unclassified patterns'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_same_w_r
  doc: ': same as -w -r -u'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_report_confusion_class
  doc: '"t c"         : report confusion from class t to c (-1 = noclass)'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_show_statistic_information
  doc: ': show statistic information'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_show_class_statistic
  doc: ': show class statistic information'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_show_confusion_matrix
  doc: ': show confusion matrix'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__verbous_mode
  doc: ': verbous mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_select_error_functionfunction
  doc: ": select error function\n<function> = [402040 | WTA | band]\ndefault = 402040"
  type: long
  inputBinding:
    prefix: -e
- id: in_lower_bound_level
  doc: ": lower bound level (see documentation)\ndefault: 0.4 for 402040\ndefault:\
    \ 0.0 for WTA\ndefault: 0.1 for band"
  type: double
  inputBinding:
    prefix: -l
- id: in_upper_bound_level
  doc: ": upper bound level (see documentation)\ndefault: 0.6 for 402040\ndefault:\
    \ 0.0 for WTA\ndefault: 0.1 for band"
  type: double
  inputBinding:
    prefix: -h
- id: in_input_result_stdin
  doc: ': input result file (default stdin)'
  type: File
  inputBinding:
    prefix: -i
- id: in_output_file_default
  doc: ': output file (default stdout)'
  type: File
  inputBinding:
    prefix: -o
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_default
  doc: ': output file (default stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_default)
cwlVersion: v1.1
baseCommand:
- analyze
