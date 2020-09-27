version 1.0

task AnalyzePosMap {
  input {
    String? prefix_posmap_files
    String? prefix_output_files
    File? path_gkpstore_used
    String? select_allowedreadsingaps_probability
  }
  command <<<
    analyzePosMap \
      ~{if defined(prefix_posmap_files) then ("-p " +  '"' + prefix_posmap_files + '"') else ""} \
      ~{if defined(prefix_output_files) then ("-o " +  '"' + prefix_output_files + '"') else ""} \
      ~{if defined(path_gkpstore_used) then ("-g " +  '"' + path_gkpstore_used + '"') else ""} \
      ~{if defined(select_allowedreadsingaps_probability) then ("-A " +  '"' + select_allowedreadsingaps_probability + '"') else ""}
  >>>
  parameter_meta {
    prefix_posmap_files: "prefix of posmap files (e.g., posmap-prefix.posmap.frgctg)"
    prefix_output_files: "prefix of output files"
    path_gkpstore_used: "path to gkpStore (not used)"
    select_allowedreadsingaps_probability: "select an analysis (multiple -A allowed)\\nreadsingaps - probability that a gap can be filled with a read\\nlibraryfate - per library detail of where each read ended up\\n- and the status of each mate\\nsurrogates  -"
  }
  output {
    File out_stdout = stdout()
  }
}