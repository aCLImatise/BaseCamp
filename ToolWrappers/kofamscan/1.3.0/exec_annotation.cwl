class: CommandLineTool
id: exec_annotation.cwl
inputs:
- id: in_file_output_result
  doc: File to output the result  [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_profile
  doc: Profile HMM database
  type: File?
  inputBinding:
    prefix: --profile
- id: in_ko_list
  doc: KO information file
  type: File?
  inputBinding:
    prefix: --ko-list
- id: in_cpu
  doc: Number of CPU to use  [1]
  type: long?
  inputBinding:
    prefix: --cpu
- id: in_config
  doc: Config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_tmp_dir
  doc: Temporary directory  [./tmp]
  type: Directory?
  inputBinding:
    prefix: --tmp-dir
- id: in_e_value
  doc: Largest E-value required of the hits
  type: string?
  inputBinding:
    prefix: --e-value
- id: in_threshold_scale
  doc: The score thresholds will be multiplied by this value
  type: string?
  inputBinding:
    prefix: --threshold-scale
- id: in_format
  doc: "Format of the output [detail]\ndetail:          Detail for each hits (including\
    \ hits below threshold)\ndetail-tsv:      Tab separeted values for detail format\n\
    mapper:          KEGG Mapper compatible format\nmapper-one-line: Similar to mapper,\
    \ but all hit KOs are listed in one line"
  type: string?
  inputBinding:
    prefix: --format
- id: in_create_alignment
  doc: "Create domain annotation files for each sequence\nThey will be located in\
    \ the tmp directory\nIncompatible with -r"
  type: boolean?
  inputBinding:
    prefix: --create-alignment
- id: in_re_annotate
  doc: "Skip hmmsearch\nIncompatible with --create-alignment"
  type: boolean?
  inputBinding:
    prefix: --reannotate
- id: in_keep_tabular
  doc: "Neither create tabular.txt nor delete K number files\nBy default, all K number\
    \ files will be combined into\na tabular.txt and delete them"
  type: boolean?
  inputBinding:
    prefix: --keep-tabular
- id: in_keep_output
  doc: "Neither create output.txt nor delete K number files\nBy default, all K number\
    \ files will be combined into\na output.txt and delete them\nMust be with --create-alignment"
  type: boolean?
  inputBinding:
    prefix: --keep-output
- id: in_query
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_output_result
  doc: File to output the result  [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output_result)
hints: []
cwlVersion: v1.1
baseCommand:
- exec_annotation
