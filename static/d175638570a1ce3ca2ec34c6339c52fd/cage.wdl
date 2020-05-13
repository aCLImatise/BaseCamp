version 1.0

task Cage {
  input {
    Boolean orOr
    String sS
    String? cageCage
  }
  command <<<
    cage \
      ~{cageCage} \
      ~{true="-- OR" false="" orOr} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}