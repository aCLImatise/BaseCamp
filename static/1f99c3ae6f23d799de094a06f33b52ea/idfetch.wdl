version 1.0

task Idfetch {
  input {
    Boolean? output_type_text
    Boolean? type_lookup_get
    Boolean? file_dump_optional
    Boolean? max_complexity_get
    Boolean? fasta_style_seqid
    Boolean? log_file_optional
    Boolean? var_6
    Boolean? var_7
    Boolean? output_only_list
    Boolean? add_features_delimited
  }
  command <<<
    idfetch \
      ~{true="-t" false="" output_type_text} \
      ~{true="-i" false="" type_lookup_get} \
      ~{true="-G" false="" file_dump_optional} \
      ~{true="-c" false="" max_complexity_get} \
      ~{true="-s" false="" fasta_style_seqid} \
      ~{true="-l" false="" log_file_optional} \
      ~{true="-q" false="" var_6} \
      ~{true="-Q" false="" var_7} \
      ~{true="-n" false="" output_only_list} \
      ~{true="-F" false="" add_features_delimited}
  >>>
  parameter_meta {
    output_type_text: "Output type:      1=text asn.1 2=Binary asn.1 3=Genbank (Seq-entry only) 4=genpept (Seq-entry only) 5=fasta (table for history) 6=quality scores (Seq-entry only) 7=Entrez DocSums 8=fasta reverse complement"
    type_lookup_get: "Type of lookup:   0 - get Seq-entry 1 - get gi state (output to stderr) 2 - get SeqIds 3 - get gi historyn (sequence change only) 4 - get gi revision history (any change to asn.1)"
    file_dump_optional: "File with list of gi's, accessions, accession.version's, fasta seqid's to dump [File In]  Optional"
    max_complexity_get: "Max complexity:   0 - get the whole blob 1 - get the bioseq of interest 2 - get the minimal bioseq-set containing the bioseq of interest 3 - get the minimal nuc-prot containing the bioseq of interest 4 - get the minimal pub-set containing the bioseq of interest"
    fasta_style_seqid: "Fasta style SeqId ENCLOSED IN QUOTES: lcl|int or str bbs|int bbm|int gb|acc|loc emb|acc|loc pir|acc|name sp|acc|name pat|country|patent|seq gi|int dbj|acc|loc prf|acc|name pdb|entry|chain [String]  Optional"
    log_file_optional: "Log file [File Out]  Optional"
    var_6: "Generate gi list by entrez query [String]  Optional"
    var_7: "Generate gi list by entrez query [File In]  Optional"
    output_only_list: "Output only the list of gis, used with -q [T/F]  Optional"
    add_features_delimited: "Add features delimited by ','. Allowed values are: 'CDD', 'SNP', 'SNP_graph', 'MGC', 'HPRD', 'STS','tRNA','microRNA'. [String]  Optional"
  }
}