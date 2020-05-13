version 1.0

task Aragorn {
  input {
    String fastFastA
    Boolean cC
    Boolean lL
    Boolean dD
    Boolean sS
    String scSc
    Boolean iI
    Boolean iI
    Boolean iI
    Boolean ioIo
    Boolean ifIf
    Boolean ifIfO
    Boolean irIr
    Boolean tvTv
    Boolean c7C7
    Boolean ssSs
    Boolean jJ
    Boolean jrJr
    Boolean jr4Jr4
    Boolean eE
    Boolean psPs
    Boolean psPs
    Boolean rpRp
    Boolean rpRp
    Boolean seqSeq
    Boolean brBr
    Boolean fastFastA
    Boolean foFo
    Boolean fFOn
    Boolean fosFos
    Boolean fonsFons
    Boolean vV
    Boolean aA
    Boolean a7A7
    Boolean aaAa
    Boolean amtAmt
    Boolean aAMm
    Boolean qQ
    Boolean rnRn
    String oO
    Boolean wW
    Boolean waWa
    Boolean wWUnix
  }
  command <<<
    aragorn \
      ~{if defined(fastFastA) then ("-fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="-c" false="" cC} \
      ~{true="-l" false="" lL} \
      ~{true="-d" false="" dD} \
      ~{true="-s" false="" sS} \
      ~{if defined(scSc) then ("-sc " +  '"' + scSc + '"') else ""} \
      ~{true="-i" false="" iI} \
      ~{true="-i" false="" iI} \
      ~{true="-i" false="" iI} \
      ~{true="-io" false="" ioIo} \
      ~{true="-if" false="" ifIf} \
      ~{true="-ifo" false="" ifIfO} \
      ~{true="-ir" false="" irIr} \
      ~{true="-tv" false="" tvTv} \
      ~{true="-c7" false="" c7C7} \
      ~{true="-ss" false="" ssSs} \
      ~{true="-j" false="" jJ} \
      ~{true="-jr" false="" jrJr} \
      ~{true="-jr4" false="" jr4Jr4} \
      ~{true="-e" false="" eE} \
      ~{true="-ps" false="" psPs} \
      ~{true="-ps" false="" psPs} \
      ~{true="-rp" false="" rpRp} \
      ~{true="-rp" false="" rpRp} \
      ~{true="-seq" false="" seqSeq} \
      ~{true="-br" false="" brBr} \
      ~{true="-fasta" false="" fastFastA} \
      ~{true="-fo" false="" foFo} \
      ~{true="-fon" false="" fFOn} \
      ~{true="-fos" false="" fosFos} \
      ~{true="-fons" false="" fonsFons} \
      ~{true="-v" false="" vV} \
      ~{true="-a" false="" aA} \
      ~{true="-a7" false="" a7A7} \
      ~{true="-aa" false="" aaAa} \
      ~{true="-amt" false="" amtAmt} \
      ~{true="-amm" false="" aAMm} \
      ~{true="-q" false="" qQ} \
      ~{true="-rn" false="" rnRn} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{true="-wa" false="" waWa} \
      ~{true="-wunix" false="" wWUnix}
  >>>
}