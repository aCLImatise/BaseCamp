version 1.0

task RgtVizIntegration {
  input {
    Boolean iIHtml
    String l2mL2m
    String oO
  }
  command <<<
    rgt-viz integration \
      ~{true="-ihtml" false="" iIHtml} \
      ~{if defined(l2mL2m) then ("-l2m " +  '"' + l2mL2m + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""}
  >>>
}