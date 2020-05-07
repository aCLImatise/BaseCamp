version 1.0

task Pca {
  input {
    Boolean iI
    Boolean oO
    Boolean eE
    String lL
    String? mustMust
    String? allAll
    String? beBe
    String? specifiedSpecified
  }
  command <<<
    pca \
      ~{mustMust} \
      ~{true="-i" false="" iI} \
      ~{true="-o" false="" oO} \
      ~{true="-e" false="" eE} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{allAll} \
      ~{beBe} \
      ~{specifiedSpecified}
  >>>
}