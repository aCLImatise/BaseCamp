version 1.0

task Sdust {
  input {
    Int? t
    Int? w
    String in_dot_fa
  }
  command <<<
    sdust \
      ~{in_dot_fa} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/minimap2:2.18--h5bf99c6_0"
  }
  parameter_meta {
    t: ""
    w: ""
    in_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
  }
}