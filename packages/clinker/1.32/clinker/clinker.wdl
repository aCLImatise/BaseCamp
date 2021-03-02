version 1.0

task Clinker {
  input {
    String? w
    String? h
    String run
  }
  command <<<
    clinker \
      ~{run} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(h) then ("-h " +  '"' + h + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clinker:1.32--1"
  }
  parameter_meta {
    w: ""
    h: ""
    run: ""
  }
  output {
    File out_stdout = stdout()
  }
}