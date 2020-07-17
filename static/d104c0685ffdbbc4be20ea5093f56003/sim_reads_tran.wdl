version 1.0

task SimReadsTran {
  input {
    String? error_rate
    String? read_length
    Boolean? paired
    String? sd
    String? insert_distance
    String ref_dot_fa
    String reads_dot_fa
  }
  command <<<
    sim_reads_tran \
      ~{ref_dot_fa} \
      ~{reads_dot_fa} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(read_length) then ("--read_length " +  '"' + read_length + '"') else ""} \
      ~{true="--paired" false="" paired} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(insert_distance) then ("--insert_distance " +  '"' + insert_distance + '"') else ""}
  >>>
  parameter_meta {
    error_rate: "(=0.01)           error rate"
    read_length: "(=100)           read length"
    paired: "if paired-end"
    sd: "(=-1)                     sd"
    insert_distance: "(=500)       insert distance"
    ref_dot_fa: ""
    reads_dot_fa: ""
  }
}