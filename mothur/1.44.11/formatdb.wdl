version 1.0

task Formatdb {
  input {
    Boolean? parse_options_t
    Boolean? input_file_database
    Boolean? asn_database_binary
    Boolean? create_alias_file
    Boolean? gifile_file_containing
    Boolean? binary_gifile_produced
    Boolean? taxid_file_set
  }
  command <<<
    formatdb \
      ~{true="-o" false="" parse_options_t} \
      ~{true="-a" false="" input_file_database} \
      ~{true="-b" false="" asn_database_binary} \
      ~{true="-L" false="" create_alias_file} \
      ~{true="-F" false="" gifile_file_containing} \
      ~{true="-B" false="" binary_gifile_produced} \
      ~{true="-T" false="" taxid_file_set}
  >>>
  parameter_meta {
    parse_options_t: "Parse options T - True: Parse SeqId and create indexes. F - False: Do not parse SeqId. Do not create indexes."
    input_file_database: "Input file is database in ASN.1 format (otherwise FASTA is expected) T - True,  F - False."
    asn_database_binary: "ASN.1 database in binary mode T - binary,  F - text mode."
    create_alias_file: "Create an alias file with this name use the gifile arg (below) if set to calculate db size use the BLAST db specified with -i (above) [File Out]  Optional"
    gifile_file_containing: "Gifile (file containing list of gi's) [File In]  Optional"
    binary_gifile_produced: "Binary Gifile produced from the Gifile specified above [File Out]  Optional"
    taxid_file_set: "Taxid file to set the taxonomy ids in ASN.1 deflines [File In]  Optional"
  }
}