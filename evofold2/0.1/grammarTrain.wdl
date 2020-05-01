version 1.0

task GrammarTrain {
  input {
    Boolean tT
    Boolean aA
    Boolean nN
    Boolean pP
    Boolean dD
    Boolean iI
    Boolean lL
    Boolean oO
    Boolean oO
    String? grammarGrammarTxt
    String? emitEmitModelsTxt
    String? alAlGama
  }
  command <<<
    grammarTrain \
      ~{grammarGrammarTxt} \
      ~{true="-t" false="" tT} \
      ~{true="-a" false="" aA} \
      ~{true="-n" false="" nN} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{true="-o" false="" oO} \
      ~{true="-o" false="" oO} \
      ~{emitEmitModelsTxt} \
      ~{alAlGama}
  >>>
}