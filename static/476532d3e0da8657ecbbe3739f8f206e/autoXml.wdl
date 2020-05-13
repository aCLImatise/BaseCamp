version 1.0

task AutoXml {
  input {
    String textTextField
    String commentComment
    Boolean pickyPicky
    Boolean mainMain
    String prefixPrefix
    String positivePositive
    File? filedFiledTdx
    String? rootRoot
  }
  command <<<
    autoXml \
      ~{filedFiledTdx} \
      ~{if defined(textTextField) then ("-textField " +  '"' + textTextField + '"') else ""} \
      ~{if defined(commentComment) then ("-comment " +  '"' + commentComment + '"') else ""} \
      ~{true="-picky" false="" pickyPicky} \
      ~{true="-main" false="" mainMain} \
      ~{if defined(prefixPrefix) then ("-prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(positivePositive) then ("-positive " +  '"' + positivePositive + '"') else ""} \
      ~{rootRoot}
  >>>
}