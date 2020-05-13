version 1.0

task SplitUnitigs {
  input {
    Boolean gG
    Boolean tT
    String uU
    String sS
    Boolean nN
    Boolean nN
    Boolean vV
    Boolean eE
  }
  command <<<
    splitUnitigs \
      ~{true="-g" false="" gG} \
      ~{true="-t" false="" tT} \
      ~{if defined(uU) then ("-u " +  '"' + uU + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-N" false="" nN} \
      ~{true="-n" false="" nN} \
      ~{true="-V" false="" vV} \
      ~{true="-E" false="" eE}
  >>>
}