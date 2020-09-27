class: CommandLineTool
id: GotohScan.cwl
inputs:
- id: in_dbase
  doc: Input database FILE in FASTA format.
  type: File
  inputBinding:
    prefix: --dbase
- id: in_query
  doc: Input query FILE in FASTA format.
  type: File
  inputBinding:
    prefix: --query
- id: in_config
  doc: Input configuration FILE.
  type: File
  inputBinding:
    prefix: --config
- id: in_split
  doc: 'Database is splitted into NUMBER nt large subsequences. Default: 10000'
  type: long
  inputBinding:
    prefix: --split
- id: in_set_evalue_number
  doc: 'Set Evalue (double!). NUMBER should be < 10. Default: 1e-3'
  type: long
  inputBinding:
    prefix: -e
- id: in_set_percent_identity
  doc: Set percent identity of aligned sequences. NUMBER should be in [0.0,100.0]
  type: long
  inputBinding:
    prefix: -p
- id: in_print_score_data
  doc: "Print score distribution data for each query to a file. Default: unset\nProduces\
    \ an xmgrace (.agr) file!"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_give_blast_output
  doc: "Give output format. Default: 0\n0 - Blast tabular output\n1 - Blast tabular\
    \ output + aligned sequences\n2 - FASTA format. NOTE: Hit sequence only, without\
    \ gaps !\n3 - MAF format. NOTE: Header truncated to 30 characters!\n4 - BED +\
    \ aligned sequences\n5 - GFF + aligned sequences"
  type: long
  inputBinding:
    prefix: -o
- id: in_verbose
  doc: '|1        Print Warnings and Notes. Default: 0'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_jana_at_bio_in_fdot_uni_leipzig_dot_de
  doc: 'Date:    March 5, 2009'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- GotohScan
