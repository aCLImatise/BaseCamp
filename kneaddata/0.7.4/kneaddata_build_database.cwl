class: CommandLineTool
id: kneaddata_build_database.cwl
inputs:
- id: fast_a
  doc: input FASTA file
  type: string
  inputBinding:
    position: 0
- id: output_prefix
  doc: prefix for all output files
  type: string
  inputBinding:
    prefix: --output-prefix
- id: bm_tool_path
  doc: path to bmtool executable
  type: string
  inputBinding:
    prefix: --bmtool-path
- id: sr_prism_path
  doc: path to srprism executable
  type: string
  inputBinding:
    prefix: --srprism-path
- id: make_blast_db_path
  doc: path to makeblastdb executable
  type: string
  inputBinding:
    prefix: --makeblastdb-path
- id: logdir
  doc: location to store log files
  type: string
  inputBinding:
    prefix: --logdir
outputs: []
cwlVersion: v1.1
baseCommand:
- kneaddata_build_database
