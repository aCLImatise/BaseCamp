version 1.0

task RsemPreref {
  input {
    Boolean lL
    Boolean fF
    Boolean qQ
  }
  command <<<
    rsem-preref \
      ~{true="-l" false="" lL} \
      ~{true="-f" false="" fF} \
      ~{true="-q" false="" qQ}
  >>>
}