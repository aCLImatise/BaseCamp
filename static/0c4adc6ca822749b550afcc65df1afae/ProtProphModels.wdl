version 1.0

task ProtProphModels.pl {
  input {
    File specifySpecify
    String specifySpecify
    String specifySpecify
    String specifySpecify
    Boolean kK
    Boolean cC
    Boolean gG
  }
  command <<<
    ProtProphModels.pl \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{true="-c" false="" cC} \
      ~{true="-G" false="" gG}
  >>>
}