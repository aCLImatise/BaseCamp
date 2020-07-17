version 1.0

task MotifShuffleColumns {
  input {
    File? output_file_name
    String? seed
    String motif_db
  }
  command <<<
    motif-shuffle-columns \
      ~{motif_db} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(seed) then ("-seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    output_file_name: "output file name"
    seed: "pseudo-random number generator seed"
    motif_db: ""
  }
}