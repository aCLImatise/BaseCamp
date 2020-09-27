version 1.0

task MsstitchStorespectra {
  input {
    Array[String] set_names
    File? dbfile
    File? output_file
  }
  command <<<
    msstitch storespectra \
      ~{if defined(set_names) then ("--setnames " +  '"' + set_names + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    set_names: "SETNAMES [SETNAMES ...]"
    dbfile: "Database lookup file"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}