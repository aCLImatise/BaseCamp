version 1.0

task ExtractMarkers.py {
  input {
    String? database
    String? clade
    String? output_dir
  }
  command <<<
    extract_markers.py \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(clade) then ("--clade " +  '"' + clade + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  parameter_meta {
    database: "The input MetaPhlAn dtabase"
    clade: "The clades to investigate"
    output_dir: "The output directory"
  }
}