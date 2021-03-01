class: CommandLineTool
id: formatdb.cwl
inputs:
- id: in_title_database_file
  doc: Title for database file [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_input_files_formatting
  doc: Input file(s) for formatting [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_logfile_name_optionaldefault
  doc: "Logfile name: [File Out]  Optional\ndefault = formatdb.log"
  type: File?
  inputBinding:
    prefix: -l
- id: in_type_filet_optionaldefault
  doc: "Type of file\nT - protein\nF - nucleotide [T/F]  Optional\ndefault = T"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_parse_optionst_create
  doc: "Parse options\nT - True: Parse SeqId and create indexes.\nF - False: Do not\
    \ parse SeqId. Do not create indexes."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_input_file_database
  doc: "Input file is database in ASN.1 format (otherwise FASTA is expected)\nT -\
    \ True,\nF - False."
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_asn_database_binaryf
  doc: "ASN.1 database in binary mode\nT - binary,\nF - text mode."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_input_seqentry_optionaldefault
  doc: "Input is a Seq-entry [T/F]  Optional\ndefault = F"
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_base_name_optional
  doc: Base name for BLAST files [String]  Optional
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_database_volume_size
  doc: "Database volume size in millions of letters [Integer]  Optional\ndefault =\
    \ 4000"
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_create_indexes_limited
  doc: "Create indexes limited only to accessions - sparse [T/F]  Optional\ndefault\
    \ = F"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_verbose_check_nonunique
  doc: "Verbose: check for non-unique string ids in the database [T/F]  Optional\n\
    default = F"
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_create_alias_file
  doc: "Create an alias file with this name\nuse the gifile arg (below) if set to\
    \ calculate db size\nuse the BLAST db specified with -i (above) [File Out]  Optional"
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_gifile_file_containing
  doc: Gifile (file containing list of gi's) [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_binary_gifile_produced
  doc: Binary Gifile produced from the Gifile specified above [File Out]  Optional
  type: File?
  inputBinding:
    prefix: -B
- id: in_taxid_file_set
  doc: Taxid file to set the taxonomy ids in ASN.1 deflines [File In]  Optional
  type: boolean?
  inputBinding:
    prefix: -T
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_logfile_name_optionaldefault
  doc: "Logfile name: [File Out]  Optional\ndefault = formatdb.log"
  type: File?
  outputBinding:
    glob: $(inputs.in_logfile_name_optionaldefault)
- id: out_binary_gifile_produced
  doc: Binary Gifile produced from the Gifile specified above [File Out]  Optional
  type: File?
  outputBinding:
    glob: $(inputs.in_binary_gifile_produced)
hints: []
cwlVersion: v1.1
baseCommand:
- formatdb
