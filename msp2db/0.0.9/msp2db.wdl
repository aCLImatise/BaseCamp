version 1.0

task Msp2db {
  input {
    String? msp_pth
    String? source
    String? out_pth
    String? db_type
    Boolean? delete_tables
    String? ms_level
    String? polarity
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
      ~{true="--delete_tables" false="" delete_tables} \
      ~{if defined(ms_level) then ("--mslevel " +  '"' + ms_level + '"') else ""} \
      ~{if defined(polarity) then ("--polarity " +  '"' + polarity + '"') else ""} \
      ~{if defined(chunk) then ("--chunk " +  '"' + chunk + '"') else ""} \
      ~{if defined(schema) then ("--schema " +  '"' + schema + '"') else ""} \
      ~{true="--ignore_compound_lookup" false="" ignore_compound_lookup}
  >>>
  parameter_meta {
    msp_pth: "Path to the MSP file (or directory of msp files)"
    source: "Name of data source (e.g. MassBank, LipidBlast)"
    out_pth: "File path for SQLite database"
    db_type: "Database type [mysql, sqlite]"
    delete_tables: "Delete tables"
    ms_level: "MS level of fragmentation if not detailed in msp file"
    polarity: "Polarity of fragmentation if not detailed in msp file"
    chunk: "Chunks of spectra to parse data (useful to control memory usage)"
    schema: "Type of schema used (by default is \"mona\" msp style but can use \"massbank\" style"
    ignore_compound_lookup: "ignore searching of compounds for each spectra based on meta information in the MSP file"
    prog: ""
  }
}