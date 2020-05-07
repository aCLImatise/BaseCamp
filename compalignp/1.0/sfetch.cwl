class: CommandLineTool
id: sfetch.cwl
inputs:
- id: a
  doc: ': name is an accession number, not a key'
  type: boolean
  inputBinding:
    prefix: -a
- id: d
  doc: ': get sequence from <seqfile>'
  type: string
  inputBinding:
    prefix: -d
- id: d
  doc: ': instead, get sequence from main database'
  type: string
  inputBinding:
    prefix: -D
- id: r
  doc: ': rename the fragment <newname>'
  type: string
  inputBinding:
    prefix: -r
- id: f
  doc: ': from which residue (1..N)'
  type: string
  inputBinding:
    prefix: -f
- id: t
  doc: ': to which residue (1..N)'
  type: string
  inputBinding:
    prefix: -t
- id: o
  doc: ': direct output to <outfile>'
  type: string
  inputBinding:
    prefix: -o
- id: f
  doc: ': use output format of <format>; see below for list. Default is original format
    of database.'
  type: string
  inputBinding:
    prefix: -F
- id: dsw
  doc: $SWDIR   SwissProt
  type: boolean
  inputBinding:
    prefix: -Dsw
- id: dpi_r
  doc: $PIRDIR  PIR
  type: boolean
  inputBinding:
    prefix: -Dpir
- id: dem
  doc: $EMBLDIR EMBL
  type: boolean
  inputBinding:
    prefix: -Dem
- id: dgb
  doc: $GBDIR   GenBank
  type: boolean
  inputBinding:
    prefix: -Dgb
- id: dwp
  doc: $WORMDIR WormPep
  type: boolean
  inputBinding:
    prefix: -Dwp
- id: do_wl
  doc: $OWLDIR  OWL
  type: boolean
  inputBinding:
    prefix: -Dowl
- id: in_format
  doc: ': specify input sequence file format <s>'
  type: string
  inputBinding:
    prefix: --informat
outputs: []
cwlVersion: v1.1
baseCommand:
- sfetch
