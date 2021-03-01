version 1.0

task Biasaway {
  input {
    Boolean? v
    String sequences
    String bin
  }
  command <<<
    biasaway \
      ~{sequences} \
      ~{bin} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biasaway:3.3.0--py_0"
  }
  parameter_meta {
    v: ""
    sequences: "-> type: `biasaway w -h`"
    bin: "-> type: `biasaway c -h`"
  }
  output {
    File out_stdout = stdout()
  }
}