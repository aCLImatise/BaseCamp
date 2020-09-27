class: CommandLineTool
id: ppanggolin_graph.cwl
inputs:
- id: in_pan_genome
  doc: 'The pangenome .h5 file (default: None)'
  type: File
  inputBinding:
    prefix: --pangenome
- id: in_remove_high_copy_number
  doc: "Positive Number: Remove families having a number of\ncopy of gene in a single\
    \ organism above or equal to\nthis threshold in at least one organism (0 or negative\n\
    values are ignored). (default: 0)"
  type: long
  inputBinding:
    prefix: --remove_high_copy_number
- id: in_tmpdir
  doc: 'directory for storing temporary files (default: /tmp)'
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_verbose
  doc: "Indicate verbose level (0 for warning and errors only,\n1 for info, 2 for\
    \ debug) (default: 1)"
  type: string
  inputBinding:
    prefix: --verbose
- id: in_log
  doc: 'log output file (default: stdout)'
  type: File
  inputBinding:
    prefix: --log
- id: in_cpu
  doc: 'Number of available cpus (default: 1)'
  type: long
  inputBinding:
    prefix: --cpu
- id: in_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File
  inputBinding:
    prefix: --force
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_log
  doc: 'log output file (default: stdout)'
  type: File
  outputBinding:
    glob: $(inputs.in_log)
- id: out_force
  doc: "Force writing in output directory and in pangenome\noutput file. (default:\
    \ False)\n"
  type: File
  outputBinding:
    glob: $(inputs.in_force)
cwlVersion: v1.1
baseCommand:
- ppanggolin
- graph
