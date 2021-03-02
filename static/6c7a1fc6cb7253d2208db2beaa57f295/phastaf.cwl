class: CommandLineTool
id: phastaf.cwl
inputs:
- id: in_check
  doc: Check dependencies are installed
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_force
  doc: 'Force overwite of existing output folder (default: OFF)'
  type: Directory?
  inputBinding:
    prefix: --force
- id: in_keep_files
  doc: 'Keep intermediate files (default: OFF)'
  type: boolean?
  inputBinding:
    prefix: --keepfiles
- id: in_outdir
  doc: "Output folder (default: '')"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_db
  doc: "Diamond database of phage proteins (default: '/usr/local/db/phastaf.dmnd')"
  type: string?
  inputBinding:
    prefix: --db
- id: in_cpus
  doc: 'Number of CPUs to use (0=ALL) (default: 1)'
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_i_gff
  doc: 'Intergenic fuzz factor (default: 2000)'
  type: long?
  inputBinding:
    prefix: --igff
- id: in_min_genes
  doc: 'Minimum genes in cluster (default: 5)'
  type: long?
  inputBinding:
    prefix: --mingenes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: 'Force overwite of existing output folder (default: OFF)'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_force)
- id: out_outdir
  doc: "Output folder (default: '')"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- phastaf
