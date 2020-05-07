version 1.0

task VarlociraptorCallCnvsOPTIONS {
  input {
    String purityPurity
    String threadsThreads
  }
  command <<<
    varlociraptor call cnvs OPTIONS \
      ~{if defined(purityPurity) then ("--purity " +  '"' + purityPurity + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}