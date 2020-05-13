version 1.0

task Cmemit {
  input {
    String oO
    String nN
    Boolean uU
    Boolean aA
    Boolean cC
    String eE
    Boolean lL
    Boolean u5pU5p
    Boolean u3pU3p
    String a5pA5p
    String a3pA3p
    String seedSeed
    Boolean iidIid
    Boolean rnaRna
    Boolean dnaDna
    String idxIdx
    String outOutFormat
    String tTFile
    String expExp
    Boolean hmmHmmOnly
    Boolean noNoHmmOnly
    String? cmCmFile
  }
  command <<<
    cmemit \
      ~{cmCmFile} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-u" false="" uU} \
      ~{true="-a" false="" aA} \
      ~{true="-c" false="" cC} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="--u5p" false="" u5pU5p} \
      ~{true="--u3p" false="" u3pU3p} \
      ~{if defined(a5pA5p) then ("--a5p " +  '"' + a5pA5p + '"') else ""} \
      ~{if defined(a3pA3p) then ("--a3p " +  '"' + a3pA3p + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--iid" false="" iidIid} \
      ~{true="--rna" false="" rnaRna} \
      ~{true="--dna" false="" dnaDna} \
      ~{if defined(idxIdx) then ("--idx " +  '"' + idxIdx + '"') else ""} \
      ~{if defined(outOutFormat) then ("--outformat " +  '"' + outOutFormat + '"') else ""} \
      ~{if defined(tTFile) then ("--tfile " +  '"' + tTFile + '"') else ""} \
      ~{if defined(expExp) then ("--exp " +  '"' + expExp + '"') else ""} \
      ~{true="--hmmonly" false="" hmmHmmOnly} \
      ~{true="--nohmmonly" false="" noNoHmmOnly}
  >>>
}