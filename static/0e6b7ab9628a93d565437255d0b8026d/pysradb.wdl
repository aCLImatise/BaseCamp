version 1.0

task Pysradb {
  input {
    Boolean citationCitation
  }
  command <<<
    pysradb \
      ~{true="--citation" false="" citationCitation}
  >>>
}