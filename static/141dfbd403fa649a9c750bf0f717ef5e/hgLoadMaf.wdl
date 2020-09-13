version 1.0

task HgLoadMaf {
  input {
    Boolean? warn_instead_error_emptyincomplete
    Boolean? warn_instead_error_detail
    File? test
    Directory? path_prefix
    File? tmpdir
    File? load_file
    Int? max_namelen
    File? def_pos
    Boolean? custom
    String database
  }
  command <<<
    hgLoadMaf \
      ~{database} \
      ~{if (warn_instead_error_emptyincomplete) then "-warn" else ""} \
      ~{if (warn_instead_error_detail) then "-WARN" else ""} \
      ~{if defined(test) then ("-test " +  '"' + test + '"') else ""} \
      ~{if defined(path_prefix) then ("-pathPrefix " +  '"' + path_prefix + '"') else ""} \
      ~{if defined(tmpdir) then ("-tmpDir " +  '"' + tmpdir + '"') else ""} \
      ~{if defined(load_file) then ("-loadFile " +  '"' + load_file + '"') else ""} \
      ~{if defined(max_namelen) then ("-maxNameLen " +  '"' + max_namelen + '"') else ""} \
      ~{if defined(def_pos) then ("-defPos " +  '"' + def_pos + '"') else ""} \
      ~{if (custom) then "-custom" else ""}
  >>>
  parameter_meta {
    warn_instead_error_emptyincomplete: "warn instead of error upon empty/incomplete alignments"
    warn_instead_error_detail: "warn instead of error, with detail for the warning"
    test: "use infile as input, and suppress loading\\nthe database. Just create .tab file in current dir."
    path_prefix: "load files from specified directory\\n(default /gbdb/database/table."
    tmpdir: "path to directory for creation of temporary .tab file\\nwhich will be removed after loading"
    load_file: "use file as input"
    max_namelen: "specify max chromosome name length to avoid\\nreference to chromInfo table"
    def_pos: "file to put default position in\\ndefault position is first block"
    custom: "loading a custom track, don't use history\\nor extFile tables"
    database: ""
  }
  output {
    File out_stdout = stdout()
  }
}