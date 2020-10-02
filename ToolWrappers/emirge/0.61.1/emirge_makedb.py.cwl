class: CommandLineTool
id: emirge_makedb.py.cwl
inputs:
- id: in_build_database_gene
  doc: "[SSU|LSU], --gene=[SSU|LSU]\nbuild database from this gene (SSU=Small Subunit\
    \ rRNA;\nLSU=Large Subunit rRNA) default = SSU"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_threads
  doc: "number of threads to use for vsearch clustering of\ndatabase (default = use\
    \ all available)"
  type: long
  inputBinding:
    prefix: --threads
- id: in_tmpdir
  doc: working directory for temporary files (default = /tmp)
  type: Directory
  inputBinding:
    prefix: --tmpdir
- id: in_release
  doc: 'SILVA release number (default: current SILVA release)'
  type: long
  inputBinding:
    prefix: --release
- id: in_min_len
  doc: minimum reference sequence length (default = 1200)
  type: long
  inputBinding:
    prefix: --min-len
- id: in_max_len
  doc: maximum reference sequence length (default = 2000)
  type: long
  inputBinding:
    prefix: --max-len
- id: in_id
  doc: "Cluster at this fractional identity level (default =\n0.97)"
  type: double
  inputBinding:
    prefix: --id
- id: in_keep
  doc: 'keep intermediary files (default: do not keep)'
  type: boolean
  inputBinding:
    prefix: --keep
- id: in_v_search
  doc: 'path to vsearch binary (default: look in $PATH)'
  type: File
  inputBinding:
    prefix: --vsearch
- id: in_bowtie_build
  doc: 'path to bowtie-build binary (default: look in $PATH)'
  type: File
  inputBinding:
    prefix: --bowtie-build
- id: in_silva_license_accepted
  doc: "I have read and accepted the SILVA license.\n"
  type: boolean
  inputBinding:
    prefix: --silva-license-accepted
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- emirge_makedb.py
