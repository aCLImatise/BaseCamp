class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/formatdb.cwl
inputs:
- id: parse_options_t
  doc: 'Parse options T - True: Parse SeqId and create indexes. F - False: Do not
    parse SeqId. Do not create indexes.'
  type: boolean
  inputBinding:
    prefix: -o
- id: input_file_database
  doc: Input file is database in ASN.1 format (otherwise FASTA is expected) T - True,  F
    - False.
  type: boolean
  inputBinding:
    prefix: -a
- id: asn_database_binary
  doc: ASN.1 database in binary mode T - binary,  F - text mode.
  type: boolean
  inputBinding:
    prefix: -b
- id: create_alias_file
  doc: Create an alias file with this name use the gifile arg (below) if set to calculate
    db size use the BLAST db specified with -i (above) [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -L
- id: gifile_file_containing
  doc: Gifile (file containing list of gi's) [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -F
- id: binary_gifile_produced
  doc: Binary Gifile produced from the Gifile specified above [File Out]  Optional
  type: boolean
  inputBinding:
    prefix: -B
- id: taxid_file_set
  doc: Taxid file to set the taxonomy ids in ASN.1 deflines [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -T
outputs: []
cwlVersion: v1.1
baseCommand:
- formatdb
