class: CommandLineTool
id: panaroo_qc.cwl
inputs:
- id: in_threads
  doc: number of threads to use (default=1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_graph_type
  doc: the type of graph to generate (default='all')
  type: string
  inputBinding:
    prefix: --graph_type
- id: in_ref_db
  doc: reference mash database for contamination
  type: string
  inputBinding:
    prefix: --ref_db
- id: in_input
  doc: input GFF3 files (usually output from running Prokka)
  type: string[]
  inputBinding:
    prefix: --input
- id: in_out_dir
  doc: "location of an output directory\n"
  type: Directory
  inputBinding:
    prefix: --out_dir
- id: in_quantification_dot
  doc: --version             show program's version number and exit
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: "location of an output directory\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_out_dir)
cwlVersion: v1.1
baseCommand:
- panaroo-qc
