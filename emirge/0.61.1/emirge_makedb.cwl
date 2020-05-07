class: CommandLineTool
id: emirge_makedb.py.cwl
inputs:
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: g
  doc: '[SSU|LSU], --gene=[SSU|LSU] build database from this gene (SSU=Small Subunit
    rRNA; LSU=Large Subunit rRNA) default = SSU'
  type: boolean
  inputBinding:
    prefix: -g
- id: threads
  doc: number of threads to use for vsearch clustering of database (default = use
    all available)
  type: string
  inputBinding:
    prefix: --threads
- id: tmpdir
  doc: working directory for temporary files (default = /tmp)
  type: string
  inputBinding:
    prefix: --tmpdir
- id: release
  doc: 'SILVA release number (default: current SILVA release)'
  type: string
  inputBinding:
    prefix: --release
- id: min_len
  doc: minimum reference sequence length (default = 1200)
  type: string
  inputBinding:
    prefix: --min-len
- id: max_len
  doc: maximum reference sequence length (default = 2000)
  type: string
  inputBinding:
    prefix: --max-len
- id: id
  doc: Cluster at this fractional identity level (default = 0.97)
  type: double
  inputBinding:
    prefix: --id
- id: keep
  doc: 'keep intermediary files (default: do not keep)'
  type: boolean
  inputBinding:
    prefix: --keep
- id: v_search
  doc: 'path to vsearch binary (default: look in $PATH)'
  type: File
  inputBinding:
    prefix: --vsearch
- id: bowtie_build
  doc: 'path to bowtie-build binary (default: look in $PATH)'
  type: File
  inputBinding:
    prefix: --bowtie-build
- id: silva_license_accepted
  doc: I have read and accepted the SILVA license.
  type: boolean
  inputBinding:
    prefix: --silva-license-accepted
outputs: []
cwlVersion: v1.1
baseCommand:
- emirge_makedb.py
