class: CommandLineTool
id: gtftk_ologram_modl_treeify.cwl
inputs:
- id: in_input_file
  doc: 'Complete path to the OLOGRAM output file (default: None)'
  type: File?
  inputBinding:
    prefix: --inputfile
- id: in_output
  doc: 'Pdf file name (default: None)'
  type: boolean?
  inputBinding:
    prefix: --output
- id: in_query_label
  doc: 'Name of the query for display (default: Query)'
  type: boolean?
  inputBinding:
    prefix: --query-label
- id: in_top_s
  doc: 'Optional. Only the top t combinations sorted by total basepairs in real data
    will be displayed. (default: -1)'
  type: boolean?
  inputBinding:
    prefix: --top-s
- id: in_verbosity
  doc: 'Set output verbosity ([0-3]). (default: 0)'
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  inputBinding:
    prefix: --no-date
- id: in_add_chr
  doc: "Add 'chr' to chromosome names before printing output. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --add-chr
- id: in_tmp_dir
  doc: 'Keep all temporary files into this folder. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --tmp-dir
- id: in_keep_all
  doc: 'Try to keep all temporary files even if process does not terminate normally.
    (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-all
- id: in_logger_file
  doc: 'Stores the arguments passed to the command into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --logger-file
- id: in_write_message_to_file
  doc: 'Store all message into a file. (default: None)'
  type: boolean?
  inputBinding:
    prefix: --write-message-to-file
- id: in_o_log_ram_dot
  doc: 'Notes:'
  type: string
  inputBinding:
    position: 0
- id: in_visualisation_dot
  doc: '*  This is the preferred representation for OLOGRAM-MODL results. Each node
    represents  a'
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: 'Arguments:'
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_input_file
  doc: 'Complete path to the OLOGRAM output file (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_input_file)
- id: out_no_date
  doc: 'Do not add date to output file names. (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_no_date)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pygtftk:1.2.7--py36h4edd4cd_1
cwlVersion: v1.1
baseCommand:
- gtftk
- ologram_modl_treeify
