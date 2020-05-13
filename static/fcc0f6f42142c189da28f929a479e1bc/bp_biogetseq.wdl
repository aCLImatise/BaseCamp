version 1.0

task BpBiogetseq.pl {
  input {
    String namespaceNamespace
  }
  command <<<
    bp_biogetseq.pl \
      ~{if defined(namespaceNamespace) then ("--namespace " +  '"' + namespaceNamespace + '"') else ""}
  >>>
}