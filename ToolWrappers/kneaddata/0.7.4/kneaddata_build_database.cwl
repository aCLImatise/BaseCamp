class: CommandLineTool
id: kneaddata_build_database.cwl
inputs:
- id: in_output_prefix
  doc: prefix for all output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: in_bm_tool_path
  doc: path to bmtool executable
  type: File
  inputBinding:
    prefix: --bmtool-path
- id: in_sr_prism_path
  doc: path to srprism executable
  type: File
  inputBinding:
    prefix: --srprism-path
- id: in_make_blast_db_path
  doc: path to makeblastdb executable
  type: File
  inputBinding:
    prefix: --makeblastdb-path
- id: in_logdir
  doc: "location to store log files\n"
  type: string
  inputBinding:
    prefix: --logdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- kneaddata_build_database
