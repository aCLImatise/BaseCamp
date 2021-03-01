version 1.0

task Qmerfilter {
  input {
    String threshold
    String in
    String out
  }
  command <<<
    qmer_filter \
      ~{threshold} \
      ~{in} \
      ~{out}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threshold: ""
    in: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}