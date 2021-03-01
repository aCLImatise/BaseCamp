version 1.0

task ExtractMarkerspy {
  input {
    String? database
    String? clade
    Directory? output_dir
  }
  command <<<
    extract_markers_py \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(clade) then ("--clade " +  '"' + clade + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0"
  }
  parameter_meta {
    database: "The input MetaPhlAn dtabase"
    clade: "The clades to investigate"
    output_dir: "The output directory\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}