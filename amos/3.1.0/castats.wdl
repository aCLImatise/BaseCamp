version 1.0

task Castats {
  input {
    Boolean minMinQual
    String minMinContig
    String gG
    String? caCaStats
  }
  command <<<
    castats \
      ~{caCaStats} \
      ~{true="-minqual" false="" minMinQual} \
      ~{if defined(minMinContig) then ("-mincontig " +  '"' + minMinContig + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""}
  >>>
}