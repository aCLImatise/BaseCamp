version 1.0

task _webpng {
  input {
    Boolean iI
    Boolean lL
    String tT
    Boolean dD
    Boolean aA
  }
  command <<<
    _webpng \
      ~{true="-i" false="" iI} \
      ~{true="-l" false="" lL} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-a" false="" aA}
  >>>
}