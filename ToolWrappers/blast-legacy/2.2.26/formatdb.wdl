version 1.0

task Formatdb {
  input {
    Boolean? title_database_file
    Boolean? input_files_formatting
    File? logfile_name_optionaldefault
    Boolean? type_filet_optionaldefault
    Boolean? parse_optionst_create
    Boolean? input_file_database
    Boolean? asn_database_binaryf
    Boolean? input_seqentry_optionaldefault
    Boolean? base_name_optional
    Boolean? database_volume_size
    Boolean? create_indexes_limited
    Boolean? verbose_check_nonunique
    Boolean? create_alias_file
    Boolean? gifile_file_containing
    File? binary_gifile_produced
    Boolean? taxid_file_set
  }
  command <<<
    formatdb \
      ~{if (title_database_file) then "-t" else ""} \
      ~{if (input_files_formatting) then "-i" else ""} \
      ~{if (logfile_name_optionaldefault) then "-l" else ""} \
      ~{if (type_filet_optionaldefault) then "-p" else ""} \
      ~{if (parse_optionst_create) then "-o" else ""} \
      ~{if (input_file_database) then "-a" else ""} \
      ~{if (asn_database_binaryf) then "-b" else ""} \
      ~{if (input_seqentry_optionaldefault) then "-e" else ""} \
      ~{if (base_name_optional) then "-n" else ""} \
      ~{if (database_volume_size) then "-v" else ""} \
      ~{if (create_indexes_limited) then "-s" else ""} \
      ~{if (verbose_check_nonunique) then "-V" else ""} \
      ~{if (create_alias_file) then "-L" else ""} \
      ~{if (gifile_file_containing) then "-F" else ""} \
      ~{if (binary_gifile_produced) then "-B" else ""} \
      ~{if (taxid_file_set) then "-T" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    title_database_file: "Title for database file [String]  Optional"
    input_files_formatting: "Input file(s) for formatting [File In]  Optional"
    logfile_name_optionaldefault: "Logfile name: [File Out]  Optional\\ndefault = formatdb.log"
    type_filet_optionaldefault: "Type of file\\nT - protein\\nF - nucleotide [T/F]  Optional\\ndefault = T"
    parse_optionst_create: "Parse options\\nT - True: Parse SeqId and create indexes.\\nF - False: Do not parse SeqId. Do not create indexes."
    input_file_database: "Input file is database in ASN.1 format (otherwise FASTA is expected)\\nT - True,\\nF - False."
    asn_database_binaryf: "ASN.1 database in binary mode\\nT - binary,\\nF - text mode."
    input_seqentry_optionaldefault: "Input is a Seq-entry [T/F]  Optional\\ndefault = F"
    base_name_optional: "Base name for BLAST files [String]  Optional"
    database_volume_size: "Database volume size in millions of letters [Integer]  Optional\\ndefault = 4000"
    create_indexes_limited: "Create indexes limited only to accessions - sparse [T/F]  Optional\\ndefault = F"
    verbose_check_nonunique: "Verbose: check for non-unique string ids in the database [T/F]  Optional\\ndefault = F"
    create_alias_file: "Create an alias file with this name\\nuse the gifile arg (below) if set to calculate db size\\nuse the BLAST db specified with -i (above) [File Out]  Optional"
    gifile_file_containing: "Gifile (file containing list of gi's) [File In]  Optional"
    binary_gifile_produced: "Binary Gifile produced from the Gifile specified above [File Out]  Optional"
    taxid_file_set: "Taxid file to set the taxonomy ids in ASN.1 deflines [File In]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_logfile_name_optionaldefault = "${in_logfile_name_optionaldefault}"
    File out_binary_gifile_produced = "${in_binary_gifile_produced}"
  }
}