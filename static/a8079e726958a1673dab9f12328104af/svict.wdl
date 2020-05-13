version 1.0

task Svict {
  input {
    Boolean iI
    Boolean rR
    String? svcSvcIt
  }
  command <<<
    svict \
      ~{svcSvcIt} \
      ~{true="-i" false="" iI} \
      ~{true="-r" false="" rR}
  >>>
}