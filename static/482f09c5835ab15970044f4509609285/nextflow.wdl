version 1.0

task Nextflow.bakView {
  input {
    Boolean lL
    Boolean qQ
  }
  command <<<
    nextflow.bak view \
      ~{true="-l" false="" lL} \
      ~{true="-q" false="" qQ}
  >>>
}