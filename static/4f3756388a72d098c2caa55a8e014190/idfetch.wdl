version 1.0

task Idfetch {
  input {
    File? filename_output_default
    Boolean? output_type_text
    Boolean? database_use_meaning
    Boolean? entity_number_retrieval
    Boolean? type_lookup_get
    Boolean? gi_i_d
    Boolean? file_dump_optional
    Boolean? max_complexity_whole
    Boolean? flattened_formatas_ortypenumber
    Boolean? fasta_style_seqid
    File? log_file_optional
    Boolean? var_11
    Boolean? var_12
    Boolean? output_only_list
    Boolean? add_features_delimited
  }
  command <<<
    idfetch \
      ~{if (filename_output_default) then "-o" else ""} \
      ~{if (output_type_text) then "-t" else ""} \
      ~{if (database_use_meaning) then "-d" else ""} \
      ~{if (entity_number_retrieval) then "-e" else ""} \
      ~{if (type_lookup_get) then "-i" else ""} \
      ~{if (gi_i_d) then "-g" else ""} \
      ~{if (file_dump_optional) then "-G" else ""} \
      ~{if (max_complexity_whole) then "-c" else ""} \
      ~{if (flattened_formatas_ortypenumber) then "-f" else ""} \
      ~{if (fasta_style_seqid) then "-s" else ""} \
      ~{if (log_file_optional) then "-l" else ""} \
      ~{if (var_11) then "-q" else ""} \
      ~{if (var_12) then "-Q" else ""} \
      ~{if (output_only_list) then "-n" else ""} \
      ~{if (add_features_delimited) then "-F" else ""}
  >>>
  parameter_meta {
    filename_output_default: "Filename for output  [File Out]\\ndefault = stdout"
    output_type_text: "Output type:      1=text asn.1\\n2=Binary asn.1\\n3=Genbank (Seq-entry only)\\n4=genpept (Seq-entry only)\\n5=fasta (table for history)\\n6=quality scores (Seq-entry only)\\n7=Entrez DocSums\\n8=fasta reverse complement"
    database_use_meaning: "Database to use (special meaning for -q flag: n - nucleotide, p - protein) [String]  Optional"
    entity_number_retrieval: "Entity number (retrieval number) to dump [Integer]  Optional\\ndefault = 0"
    type_lookup_get: "Type of lookup:   0 - get Seq-entry\\n1 - get gi state (output to stderr)\\n2 - get SeqIds\\n3 - get gi historyn (sequence change only)\\n4 - get gi revision history (any change to asn.1)"
    gi_i_d: "GI id for single Entity to dump [Integer]  Optional\\ndefault = 0"
    file_dump_optional: "File with list of gi's, accessions, accession.version's, fasta seqid's to dump [File In]  Optional"
    max_complexity_whole: "Max complexity:   0 - get the whole blob\\n1 - get the bioseq of interest\\n2 - get the minimal bioseq-set containing the bioseq of interest\\n3 - get the minimal nuc-prot containing the bioseq of interest\\n4 - get the minimal pub-set containing the bioseq of interest"
    flattened_formatas_ortypenumber: "flaTtened SeqId, format:\\n'type(name,accession,release,version)'\\nas '5(HUMHBB)' or\\ntype=accession, or\\ntype:number  [String]  Optional"
    fasta_style_seqid: "Fasta style SeqId ENCLOSED IN QUOTES:\\nlcl|int or str bbs|int bbm|int gb|acc|loc\\nemb|acc|loc pir|acc|name sp|acc|name\\npat|country|patent|seq gi|int dbj|acc|loc\\nprf|acc|name pdb|entry|chain [String]  Optional"
    log_file_optional: "Log file [File Out]  Optional"
    var_11: "Generate gi list by entrez query [String]  Optional"
    var_12: "Generate gi list by entrez query [File In]  Optional"
    output_only_list: "Output only the list of gis, used with -q [T/F]  Optional"
    add_features_delimited: "Add features delimited by ','. Allowed values are: 'CDD', 'SNP', 'SNP_graph', 'MGC', 'HPRD', 'STS','tRNA','microRNA'. [String]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_filename_output_default = "${in_filename_output_default}"
    File out_log_file_optional = "${in_log_file_optional}"
  }
}