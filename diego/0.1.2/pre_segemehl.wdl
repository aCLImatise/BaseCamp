version 1.0

task PreSegemehl.pl {
  input {
    File lL
    File aA
    File oO
    File hH
    String? optionsOptions
  }
  command <<<
    pre_segemehl.pl \
      ~{optionsOptions} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""}
  >>>
}