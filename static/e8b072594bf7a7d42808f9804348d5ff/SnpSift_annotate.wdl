version 1.0

task SnpSiftAnnotate {
  input {
    Boolean? dbsnp
    Boolean? clin_var
    Boolean? annotate_fields_has
    String? exists
    Boolean? id
    String? info
    String? name
    Int? max_block_size
    Boolean? no_alt
    Boolean? no_id
    Boolean? no_info
    Boolean? sorted
    Boolean? tab_ix
    File? config
    Boolean? _debug
    File? db
    Boolean? download
    Boolean? no_download
    Boolean? no_log
    Boolean? _verbose
    String? jar
    String database_dot_vcf
  }
  command <<<
    SnpSift annotate \
      ~{database_dot_vcf} \
      ~{if (dbsnp) then "-dbsnp" else ""} \
      ~{if (clin_var) then "-clinvar" else ""} \
      ~{if (annotate_fields_has) then "-a" else ""} \
      ~{if defined(exists) then ("-exists " +  '"' + exists + '"') else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if defined(info) then ("-info " +  '"' + info + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(max_block_size) then ("-maxBlockSize " +  '"' + max_block_size + '"') else ""} \
      ~{if (no_alt) then "-noAlt" else ""} \
      ~{if (no_id) then "-noId" else ""} \
      ~{if (no_info) then "-noInfo" else ""} \
      ~{if (sorted) then "-sorted" else ""} \
      ~{if (tab_ix) then "-tabix" else ""} \
      ~{if defined(config) then ("-config " +  '"' + config + '"') else ""} \
      ~{if (_debug) then "-d" else ""} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{if (download) then "-download" else ""} \
      ~{if (no_download) then "-noDownload" else ""} \
      ~{if (no_log) then "-noLog" else ""} \
      ~{if (_verbose) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dbsnp: ": Use DbSnp database."
    clin_var: ": Use ClinVar database."
    annotate_fields_has: ": Annotate fields, even if the database has an empty value (annotates using '.' for empty)."
    exists: ": Annotate whether the variant exists or not in the database (using 'tag' as an INFO field FLAG)."
    id: ": Only annotate ID field (do not add INFO field). Default: true"
    info: ": Annotate using a list of info fields (list is a comma separated list of fields). Default: ALL."
    name: ": Prepend 'str' to all annotated INFO fields. Default: ''."
    max_block_size: ": Use 'max block size' when creating index ('-sorted' command line option). Default: 16384"
    no_alt: ": Do not use REF and ALT fields when comparing database.vcf entries to file.vcf entries. Default: false"
    no_id: ": Do not annotate ID field. Default: false"
    no_info: ": Do not annotate INFO fields. Default: false"
    sorted: ": VCF database is sorted and uncompressed. Default: false"
    tab_ix: ": VCF database is tabix-indexed. Default: false"
    config: ": Specify config file"
    _debug: ": Debug."
    db: ": Database file name (for commands that require databases)."
    download: ": Download database, if not available locally. Default: true."
    no_download: ": Do not download a database, if not available locally."
    no_log: ": Do not report usage statistics to server."
    _verbose: ": Verbose."
    jar: ""
    database_dot_vcf: ": Use 'database.vcf' file as annotations database. Note: The VCF file can be bgzipped and tabix-indexed."
  }
  output {
    File out_stdout = stdout()
  }
}