class: CommandLineTool
id: magpurify_known_contam.cwl
inputs:
- id: in_db
  doc: "Path to reference database. By default, the IMAGEN_DB\nenvironmental variable\
    \ is used (default: None)"
  type: File?
  inputBinding:
    prefix: --db
- id: in_pid
  doc: 'Minimum % identity to reference (default: 98)'
  type: long?
  inputBinding:
    prefix: --pid
- id: in_evalue
  doc: 'Maximum evalue (default: 1e-05)'
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_q_cov
  doc: 'Minimum percent query coverage (default: 25)'
  type: long?
  inputBinding:
    prefix: --qcov
- id: in_threads
  doc: 'Number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- magpurify
- known-contam
