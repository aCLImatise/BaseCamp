version 1.0

task Merylsimple {
  input {
    String? s
    Int? k
  }
  command <<<
    meryl_simple \
      ~{if defined(s) then ("-S " +  '"' + s + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meryl:1.2--he1b5a44_0"
  }
  parameter_meta {
    s: ""
    k: ""
  }
  output {
    File out_stdout = stdout()
  }
}