class: CommandLineTool
id: phastaf.cwl
inputs:
- id: check
  doc: Check dependencies are installed
  type: boolean
  inputBinding:
    prefix: --check
- id: force
  doc: 'Force overwite of existing output folder (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --force
- id: keep_files
  doc: 'Keep intermediate files (default: OFF)'
  type: boolean
  inputBinding:
    prefix: --keepfiles
- id: outdir
  doc: "Output folder (default: '')"
  type: string
  inputBinding:
    prefix: --outdir
- id: db
  doc: "Diamond database of phage proteins (default: '/tmp/tmpkt032jsm/db/phastaf.dmnd')"
  type: string
  inputBinding:
    prefix: --db
- id: cpus
  doc: 'Number of CPUs to use (0=ALL) (default: 1)'
  type: string
  inputBinding:
    prefix: --cpus
- id: i_gff
  doc: 'Intergenic fuzz factor (default: 2000)'
  type: string
  inputBinding:
    prefix: --igff
- id: min_genes
  doc: 'Minimum genes in cluster (default: 5)'
  type: string
  inputBinding:
    prefix: --mingenes
outputs: []
cwlVersion: v1.1
baseCommand:
- phastaf
