version 1.0

task FixPolishesIID {
  input {
    String cC
    String gG
    Boolean gff3Gff3
  }
  command <<<
    fixPolishesIID \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{true="-gff3" false="" gff3Gff3}
  >>>
}