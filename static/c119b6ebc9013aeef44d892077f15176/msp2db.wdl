version 1.0

task Msp2db {
  input {
    File? msp_pth
    String? source
    File? out_pth
    String? db_type
    Boolean? delete_tables
    File? ms_level
    File? polarity
    String? chunk
    String? schema
    Boolean? ignore_compound_lookup
    String prog
  }
  command <<<
    msp2db \
      ~{prog} \
      ~{if defined(msp_pth) then ("--msp_pth " +  '"' + msp_pth + '"') else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if defined(out_pth) then ("--out_pth " +  '"' + out_pth + '"') else ""} \
      ~{if defined(db_type) then ("--db_type " +  '"' + db_type + '"') else ""} \
      ~{if (delete_tables) then "--delete_tables" else ""} \
      ~{if defined(ms_level) then ("--mslevel " +  '"' + ms_level + '"') else ""} \
      ~{if defined(polarity) then ("--polarity " +  '"' + polarity + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{if (ignore_compound_lookup) then "--ignore_compound_lookup" else ""}
  >>>
  parameter_meta {
    msp_pth: "Path to the MSP file (or directory of msp files)"
    source: "Name of data source (e.g. MassBank, LipidBlast)"
    out_pth: "File path for SQLite database"
    db_type: "Database type [mysql, sqlite]"
    delete_tables: "Delete tables"
    ms_level: "MS level of fragmentation if not detailed in msp file"
    polarity: "Polarity of fragmentation if not detailed in msp file"
    chunk: "Chunks of spectra to parse data (useful to control\\nmemory usage)"
    schema: "Type of schema used (by default is \\\"mona\\\" msp style\\nbut can use \\\"massbank\\\" style"
    ignore_compound_lookup: "ignore searching of compounds for each spectra based\\non meta information in the MSP file"
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}