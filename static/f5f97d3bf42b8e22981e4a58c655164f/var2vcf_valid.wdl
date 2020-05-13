version 1.0

task Var2vcfValid.pl {
  input {
    String hH
    String hH
    String sS
    String aA
    String aA
    Boolean cC
    Boolean iI
    Boolean mM
    Boolean pP
    Boolean pP
    Boolean qQ
    Boolean qQ
    Boolean dD
    Boolean vV
    Boolean fF
    Boolean oO
    Boolean fF
    Boolean nN
    Boolean eE
    Boolean tT
  }
  command <<<
    var2vcf_valid.pl \
      ~{if defined(hH) then ("-h " +  '"' + hH + '"') else ""} \
      ~{if defined(hH) then ("-H " +  '"' + hH + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-I" false="" iI} \
      ~{true="-m" false="" mM} \
      ~{true="-p" false="" pP} \
      ~{true="-P" false="" pP} \
      ~{true="-q" false="" qQ} \
      ~{true="-Q" false="" qQ} \
      ~{true="-d" false="" dD} \
      ~{true="-v" false="" vV} \
      ~{true="-f" false="" fF} \
      ~{true="-o" false="" oO} \
      ~{true="-F" false="" fF} \
      ~{true="-N" false="" nN} \
      ~{true="-E" false="" eE} \
      ~{true="-T" false="" tT}
  >>>
}