class: CommandLineTool
id: get_record.py.cwl
inputs:
- id: in_input_record_file
  doc: input a RECORD FILE
  type: File?
  inputBinding:
    prefix: -i
- id: in_input_file_id
  doc: input a LIST FILE, one RECORD ID per line
  type: File?
  inputBinding:
    prefix: -a
- id: in_output_subrecord_file
  doc: output to SUBRECORD FILE
  type: File?
  inputBinding:
    prefix: -o
- id: in_type_record_file
  doc: 'TYPE    RECORD FILE TYPE [table|fasta|fastq|hmm][default: table]'
  type: File?
  inputBinding:
    prefix: -t
- id: in_g
  doc: '[get|remove] RECORD [default: get]'
  type: string?
  inputBinding:
    prefix: -g
- id: in_table_record_column
  doc: 'if a table RECORD, the column NUM of RECORD ID[default: 1]'
  type: long?
  inputBinding:
    prefix: -k
- id: in_table_record_retain
  doc: 'if a table RECORD, retain the row NUM as header [default: 1]'
  type: long?
  inputBinding:
    prefix: -f
- id: in_table_record_seperation
  doc: 'if a table RECORD, seperation [default: "\t"]'
  type: string?
  inputBinding:
    prefix: -s
- id: in_remove_duplicates_get
  doc: remove duplicates when get table records
  type: boolean?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_subrecord_file
  doc: output to SUBRECORD FILE
  type: File?
  outputBinding:
    glob: $(inputs.in_output_subrecord_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/tesorter:1.3.0--py_0
cwlVersion: v1.1
baseCommand:
- get_record.py
