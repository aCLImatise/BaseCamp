class: CommandLineTool
id: sfetch.cwl
inputs:
- id: in_name_accession_number
  doc: ': name is an accession number, not a key'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_get_sequence_seqfile
  doc: ': get sequence from <seqfile>'
  type: File?
  inputBinding:
    prefix: -d
- id: in_instead_get_sequence
  doc: ': instead, get sequence from main database'
  type: string?
  inputBinding:
    prefix: -D
- id: in_rename_fragment_newname
  doc: ': rename the fragment <newname>'
  type: string?
  inputBinding:
    prefix: -r
- id: in__from_residue_n
  doc: ': from which residue (1..N)'
  type: long?
  inputBinding:
    prefix: -f
- id: in__to_residue_n
  doc: ': to which residue (1..N)'
  type: long?
  inputBinding:
    prefix: -t
- id: in_direct_output_outfile
  doc: ': direct output to <outfile>'
  type: string?
  inputBinding:
    prefix: -o
- id: in_use_output_format
  doc: ": use output format of <format>; see below for\nlist. Default is original\
    \ format of database."
  type: string?
  inputBinding:
    prefix: -F
- id: in_dsw
  doc: $SWDIR   SwissProt
  type: boolean?
  inputBinding:
    prefix: -Dsw
- id: in_dpi_r
  doc: $PIRDIR  PIR
  type: boolean?
  inputBinding:
    prefix: -Dpir
- id: in_dem
  doc: $EMBLDIR EMBL
  type: boolean?
  inputBinding:
    prefix: -Dem
- id: in_dgb
  doc: $GBDIR   GenBank
  type: boolean?
  inputBinding:
    prefix: -Dgb
- id: in_dwp
  doc: $WORMDIR WormPep
  type: boolean?
  inputBinding:
    prefix: -Dwp
- id: in_do_wl
  doc: $OWLDIR  OWL
  type: boolean?
  inputBinding:
    prefix: -Dowl
- id: in_in_format
  doc: ': specify input sequence file format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_fast_a
  doc: genbank
  type: string
  inputBinding:
    position: 0
- id: in_embl
  doc: gcg
  type: string
  inputBinding:
    position: 1
- id: in_pir
  doc: raw
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sfetch
