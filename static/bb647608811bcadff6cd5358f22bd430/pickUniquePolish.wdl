version 1.0

task PickUniquePolish {
  input {
    String qQ
    Boolean cqCq
    Boolean cgCg
  }
  command <<<
    pickUniquePolish \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{true="-cq" false="" cqCq} \
      ~{true="-cg" false="" cgCg}
  >>>
}