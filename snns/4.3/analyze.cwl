class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/analyze.cwl
inputs:
- id: report_wrong_default
  doc: ': report wrong classified patterns (default)'
  type: boolean
  inputBinding:
    prefix: -w
- id: report_right_patterns
  doc: ': report right classified patterns'
  type: boolean
  inputBinding:
    prefix: -r
- id: report_unclassified_patterns
  doc: ': report unclassified patterns'
  type: boolean
  inputBinding:
    prefix: -u
- id: same_w_r
  doc: ': same as -w -r -u'
  type: boolean
  inputBinding:
    prefix: -a
- id: report_confusion_class
  doc: '"t c"         : report confusion from class t to c (-1 = noclass)'
  type: boolean
  inputBinding:
    prefix: -S
- id: show_statistic_information
  doc: ': show statistic information'
  type: boolean
  inputBinding:
    prefix: -s
- id: show_class_information
  doc: ': show class statistic information'
  type: boolean
  inputBinding:
    prefix: -c
- id: show_confusion_matrix
  doc: ': show confusion matrix'
  type: boolean
  inputBinding:
    prefix: -m
- id: _verbous_mode
  doc: ': verbous mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: select_error_function
  doc: ': select error function  <function> = [402040 | WTA | band] default = 402040'
  type: string
  inputBinding:
    prefix: -e
- id: lower_bound_level
  doc: ': lower bound level (see documentation)  default: 0.4 for 402040 default:
    0.0 for WTA default: 0.1 for band'
  type: double
  inputBinding:
    prefix: -l
- id: upper_bound_level
  doc: ': upper bound level (see documentation)  default: 0.6 for 402040 default:
    0.0 for WTA default: 0.1 for band'
  type: double
  inputBinding:
    prefix: -h
- id: input_result_file
  doc: ': input result file (default stdin)'
  type: string
  inputBinding:
    prefix: -i
- id: output_file_default
  doc: ': output file (default stdout)'
  type: string
  inputBinding:
    prefix: -o
outputs: []
cwlVersion: v1.1
baseCommand:
- analyze
