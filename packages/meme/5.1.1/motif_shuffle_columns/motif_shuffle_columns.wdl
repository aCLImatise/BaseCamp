version 1.0

task Motifshufflecolumns {
  input {
    File? output_file_name
    Int? seed
    String motif_db
  }
  command <<<
    motif_shuffle_columns \
      ~{motif_db} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "output file name"
    seed: "pseudo-random number generator seed"
    motif_db: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}