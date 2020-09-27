class: CommandLineTool
id: idfetch.cwl
inputs:
- id: in_filename_output_default
  doc: "Filename for output  [File Out]\ndefault = stdout"
  type: File
  inputBinding:
    prefix: -o
- id: in_output_type_text
  doc: "Output type:      1=text asn.1\n2=Binary asn.1\n3=Genbank (Seq-entry only)\n\
    4=genpept (Seq-entry only)\n5=fasta (table for history)\n6=quality scores (Seq-entry\
    \ only)\n7=Entrez DocSums\n8=fasta reverse complement"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_database_use_meaning
  doc: 'Database to use (special meaning for -q flag: n - nucleotide, p - protein)
    [String]  Optional'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_entity_number_retrieval
  doc: "Entity number (retrieval number) to dump [Integer]  Optional\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_type_lookup_get
  doc: "Type of lookup:   0 - get Seq-entry\n1 - get gi state (output to stderr)\n\
    2 - get SeqIds\n3 - get gi historyn (sequence change only)\n4 - get gi revision\
    \ history (any change to asn.1)"
  type: boolean
  inputBinding:
    prefix: -i
- id: in_gi_i_d
  doc: "GI id for single Entity to dump [Integer]  Optional\ndefault = 0"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_file_dump_optional
  doc: File with list of gi's, accessions, accession.version's, fasta seqid's to dump
    [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -G
- id: in_max_complexity_whole
  doc: "Max complexity:   0 - get the whole blob\n1 - get the bioseq of interest\n\
    2 - get the minimal bioseq-set containing the bioseq of interest\n3 - get the\
    \ minimal nuc-prot containing the bioseq of interest\n4 - get the minimal pub-set\
    \ containing the bioseq of interest"
  type: boolean
  inputBinding:
    prefix: -c
- id: in_flattened_formatas_ortypenumber
  doc: "flaTtened SeqId, format:\n'type(name,accession,release,version)'\nas '5(HUMHBB)'\
    \ or\ntype=accession, or\ntype:number  [String]  Optional"
  type: boolean
  inputBinding:
    prefix: -f
- id: in_fasta_style_seqid
  doc: "Fasta style SeqId ENCLOSED IN QUOTES:\nlcl|int or str bbs|int bbm|int gb|acc|loc\n\
    emb|acc|loc pir|acc|name sp|acc|name\npat|country|patent|seq gi|int dbj|acc|loc\n\
    prf|acc|name pdb|entry|chain [String]  Optional"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_log_file_optional
  doc: Log file [File Out]  Optional
  type: File
  inputBinding:
    prefix: -l
- id: in_var_11
  doc: Generate gi list by entrez query [String]  Optional
  type: boolean
  inputBinding:
    prefix: -q
- id: in_var_12
  doc: Generate gi list by entrez query [File In]  Optional
  type: boolean
  inputBinding:
    prefix: -Q
- id: in_output_only_list
  doc: Output only the list of gis, used with -q [T/F]  Optional
  type: boolean
  inputBinding:
    prefix: -n
- id: in_add_features_delimited
  doc: "Add features delimited by ','. Allowed values are: 'CDD', 'SNP', 'SNP_graph',\
    \ 'MGC', 'HPRD', 'STS','tRNA','microRNA'. [String]  Optional"
  type: boolean
  inputBinding:
    prefix: -F
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_filename_output_default
  doc: "Filename for output  [File Out]\ndefault = stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_filename_output_default)
- id: out_log_file_optional
  doc: Log file [File Out]  Optional
  type: File
  outputBinding:
    glob: $(inputs.in_log_file_optional)
cwlVersion: v1.1
baseCommand:
- idfetch
