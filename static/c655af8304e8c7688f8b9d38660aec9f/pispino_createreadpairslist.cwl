class: CommandLineTool
id: pispino_createreadpairslist.cwl
inputs:
- id: in_directory_your_raw
  doc: "[REQUIRED] Directory with your raw sequences in\ngzipped FASTQ"
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_name_output_list
  doc: Name of output list file.
  type: File?
  inputBinding:
    prefix: -o
- id: in_label_add_c_end
  doc: "Add a label to the END of each sample ids in the\noutput file. N.B. \"_\"\
    \ is not allowed"
  type: File?
  inputBinding:
    prefix: --label-add-c-end
- id: in_label_add_c_front
  doc: "Add a label to the FRONT of each sample ids in the\noutput file. N.B. \"_\"\
    \ is not allowed"
  type: File?
  inputBinding:
    prefix: --label-add-c-front
- id: in_label_re_index_c
  doc: "Rename samples with the given label. It will\nautomatically add 001, 002 etc.\
    \ at the end of each\nname. N.B. \"_\" is not allowed"
  type: long?
  inputBinding:
    prefix: --label-reindex-c
- id: in_ignore_name_clash
  doc: Ignore name clash and create a mapping file anyway.
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_makes
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_read_pairs_list_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name_output_list
  doc: Name of output list file.
  type: File?
  outputBinding:
    glob: $(inputs.in_name_output_list)
- id: out_label_add_c_end
  doc: "Add a label to the END of each sample ids in the\noutput file. N.B. \"_\"\
    \ is not allowed"
  type: File?
  outputBinding:
    glob: $(inputs.in_label_add_c_end)
- id: out_label_add_c_front
  doc: "Add a label to the FRONT of each sample ids in the\noutput file. N.B. \"_\"\
    \ is not allowed"
  type: File?
  outputBinding:
    glob: $(inputs.in_label_add_c_front)
hints: []
cwlVersion: v1.1
baseCommand:
- pispino_createreadpairslist
