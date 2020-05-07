class: CommandLineTool
id: magpurify_known_contam.cwl
inputs:
- id: fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
- id: db
  doc: 'Path to reference database. By default, the IMAGEN_DB environmental variable
    is used (default: None)'
  type: string
  inputBinding:
    prefix: --db
- id: pid
  doc: 'Minimum % identity to reference (default: 98)'
  type: string
  inputBinding:
    prefix: --pid
- id: evalue
  doc: 'Maximum evalue (default: 1e-05)'
  type: string
  inputBinding:
    prefix: --evalue
- id: q_cov
  doc: 'Minimum percent query coverage (default: 25)'
  type: string
  inputBinding:
    prefix: --qcov
- id: threads
  doc: 'Number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- known-contam
