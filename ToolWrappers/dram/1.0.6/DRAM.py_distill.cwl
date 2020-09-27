class: CommandLineTool
id: DRAM.py_distill.cwl
inputs:
- id: in_input_file
  doc: 'Annotations path (default: None)'
  type: File
  inputBinding:
    prefix: --input_file
- id: in_output_dir
  doc: 'Directory to write summarized genomes (default: None)'
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_rrna_path
  doc: 'rRNA output from annotation (default: None)'
  type: File
  inputBinding:
    prefix: --rrna_path
- id: in_trna_path
  doc: 'tRNA output from annotation (default: None)'
  type: File
  inputBinding:
    prefix: --trna_path
- id: in_group_by_column
  doc: "Column from annotations to group as organism units\n(default: fasta)\n"
  type: string
  inputBinding:
    prefix: --groupby_column
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- DRAM.py
- distill
