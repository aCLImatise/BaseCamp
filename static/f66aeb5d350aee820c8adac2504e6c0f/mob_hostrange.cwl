class: CommandLineTool
id: mob_hostrange.cwl
inputs:
- id: exact_match
  doc: Single exact search criteria match
  type: boolean
  inputBinding:
    prefix: --exact_match
- id: loose_match
  doc: Wildcard loose search criteria match (e.g. IncF* will match IncFI, IncFII,
    etc.)
  type: boolean
  inputBinding:
    prefix: --loose_match
- id: replicon_name
  doc: Replicon name(s)
  type: string
  inputBinding:
    prefix: --replicon_name
- id: relax_ase_name
  doc: Relaxase name
  type: string
  inputBinding:
    prefix: --relaxase_name
- id: relax_ase_accession
  doc: Relaxase accession number
  type: string
  inputBinding:
    prefix: --relaxase_accession
- id: cluster_id
  doc: MOB-Suite Cluster ID (e.g. 416)
  type: string
  inputBinding:
    prefix: --cluster_id
- id: host_range_detailed
  doc: Complete host range report with phylogeny stats
  type: boolean
  inputBinding:
    prefix: --host_range_detailed
- id: database_directory
  doc: Directory where all download databases are located. Defaults to /tmp/tmpcsr8zpp7/lib/python3.6/site-
    packages/mob_suite/databases
  type: string
  inputBinding:
    prefix: --database_directory
- id: outdir
  doc: Output files name prefix
  type: string
  inputBinding:
    prefix: --outdir
- id: input_seq
  doc: Single plasmid sequence in FASTA format (optional)
  type: string
  inputBinding:
    prefix: --inputseq
- id: debug
  doc: Show debug detailed information (optional)
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- mob_hostrange
