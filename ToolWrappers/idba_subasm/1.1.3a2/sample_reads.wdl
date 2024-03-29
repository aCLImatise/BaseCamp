version 1.0

task SampleReads {
  input {
    Int? depth
    Float? error_rate
    Int? read_length
    Boolean? paired
    Int? sd
    Int? insert_distance
    Boolean? print_correct
    String sim_reads
    String ref_dot_fa
    String reads_dot_fa
  }
  command <<<
    sample_reads \
      ~{sim_reads} \
      ~{ref_dot_fa} \
      ~{reads_dot_fa} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(error_rate) then ("--error_rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(read_length) then ("--read_length " +  '"' + read_length + '"') else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(sd) then ("--sd " +  '"' + sd + '"') else ""} \
      ~{if defined(insert_distance) then ("--insert_distance " +  '"' + insert_distance + '"') else ""} \
      ~{if (print_correct) then "--print_correct" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depth: "(=30)                  sequencing depth of the sample"
    error_rate: "(=0.01)           error rate"
    read_length: "(=100)           read length"
    paired: "if paired-end"
    sd: "(=-1)                     sd"
    insert_distance: "(=500)       insert distance"
    print_correct: "output correct reads"
    sim_reads: ""
    ref_dot_fa: ""
    reads_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}