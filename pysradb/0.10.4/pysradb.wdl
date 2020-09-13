version 1.0

task Pysradb {
  input {
    Boolean? citation
  }
  command <<<
    pysradb \
      ~{if (citation) then "--citation" else ""}
  >>>
  parameter_meta {
    citation: "how to cite"
  }
  output {
    File out_stdout = stdout()
  }
}