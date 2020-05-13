version 1.0

task ProphetModels.pl {
  input {
    File specifySpecify
    String specifySpecify
    String specifySpecify
    String specifySpecify
    String specifySpecify
    Boolean kK
    Boolean mM
    Boolean uU
    Boolean qQ
    Boolean nN
    Boolean tT
    Boolean pP
    Boolean gG
  }
  command <<<
    ProphetModels.pl \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{if defined(specifySpecify) then ("-- Specify " +  '"' + specifySpecify + '"') else ""} \
      ~{true="-k" false="" kK} \
      ~{true="-M" false="" mM} \
      ~{true="-u" false="" uU} \
      ~{true="-q" false="" qQ} \
      ~{true="-n" false="" nN} \
      ~{true="-T" false="" tT} \
      ~{true="-P" false="" pP} \
      ~{true="-G" false="" gG}
  >>>
}