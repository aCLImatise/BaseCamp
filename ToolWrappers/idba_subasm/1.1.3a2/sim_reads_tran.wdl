version 1.0

task SimReadsTran {
  input {
    Float? error_rate
    Int? read_length
    Boolean? paired
    Int? sd
    Int? insert_distance
    String ref_dot_fa
    String reads_dot_fa
  }
  command <<<
    sim_reads_tran \
      ~{ref_dot_fa} \
      ~{reads_dot_fa} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(read_length) then ("--read_length " +  '"' + read_length + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(insert_distance) then ("--insert_distance " +  '"' + insert_distance + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    error_rate: "(=0.01)           error rate"
    read_length: "(=100)           read length"
    paired: "if paired-end"
    sd: "(=-1)                     sd"
    insert_distance: "(=500)       insert distance"
    ref_dot_fa: ""
    reads_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}