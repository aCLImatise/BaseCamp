version 1.0

task Pysradb {
  input {
    Boolean? citation
  }
  command <<<
    pysradb \
      ~{true="--citation" false="" citation}
  >>>
  parameter_meta {
    citation: "how to cite"
  }
}