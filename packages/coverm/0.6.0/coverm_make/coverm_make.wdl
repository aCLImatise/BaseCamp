version 1.0

task CovermMake {
  input {
    String? coupled
    String? flags
  }
  command <<<
    coverm make \
      ~{flags} \
      ~{if defined(coupled) then ("--coupled " +  '"' + coupled + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/coverm:0.6.0--hc216eb9_0"
  }
  parameter_meta {
    coupled: ""
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}