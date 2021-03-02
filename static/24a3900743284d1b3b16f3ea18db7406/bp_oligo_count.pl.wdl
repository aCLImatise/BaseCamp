version 1.0

task BpOligoCountpl {
  input {
    String oligo_count
  }
  command <<<
    bp_oligo_count_pl \
      ~{oligo_count}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    oligo_count: ""
  }
  output {
    File out_stdout = stdout()
  }
}