version 1.0

task YakTrioeval {
  input {
    Int? min_occurrence
    Int? mid_occurrence
    Int? min_streak
    Int? number_of_threads
    String pat_dot_yak
    String mat_dot_yak
    String seq_dot_fa
  }
  command <<<
    yak trioeval \
      ~{pat_dot_yak} \
      ~{mat_dot_yak} \
      ~{seq_dot_fa} \
      ~{if defined(min_occurrence) then ("-c " +  '"' + min_occurrence + '"') else ""} \
      ~{if defined(mid_occurrence) then ("-d " +  '"' + mid_occurrence + '"') else ""} \
      ~{if defined(min_streak) then ("-n " +  '"' + min_streak + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/yak:0.1--hed695b0_0"
  }
  parameter_meta {
    min_occurrence: "min occurrence [2]"
    mid_occurrence: "mid occurrence [5]"
    min_streak: "min streak [2]"
    number_of_threads: "number of threads [8]"
    pat_dot_yak: ""
    mat_dot_yak: ""
    seq_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}