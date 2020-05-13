version 1.0

task HYPHYMPI {
  input {
    Boolean cC
    Boolean dD
    Boolean iI
    Boolean pP
    Boolean mM
    String keywordKeyword
  }
  command <<<
    HYPHYMPI \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{true="-p" false="" pP} \
      ~{true="-m" false="" mM} \
      ~{if defined(keywordKeyword) then ("--keyword " +  '"' + keywordKeyword + '"') else ""}
  >>>
}