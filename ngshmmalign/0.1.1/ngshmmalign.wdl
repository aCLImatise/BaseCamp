version 1.0

task Ngshmmalign {
  input {
    String rR
    String rR
    String oO
    Boolean wW
    String tT
    Boolean lL
    Boolean eE
    Boolean xX
    String nN
    Boolean uU
    Boolean sS
    Boolean hardHard
    Boolean hardHard
    Boolean vV
    String mM
    String aA
    String errorError
    String goGo
    String geGe
    String ioIo
    String ieIe
    String epEp
    String lcoLco
    String lceLce
    String rcoRco
    String rceRce
  }
  command <<<
    ngshmmalign \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-E" false="" eE} \
      ~{true="-X" false="" xX} \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""} \
      ~{true="-U" false="" uU} \
      ~{true="-s" false="" sS} \
      ~{true="--hard" false="" hardHard} \
      ~{true="--HARD" false="" hardHard} \
      ~{true="-v" false="" vV} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(errorError) then ("--error " +  '"' + errorError + '"') else ""} \
      ~{if defined(goGo) then ("--go " +  '"' + goGo + '"') else ""} \
      ~{if defined(geGe) then ("--ge " +  '"' + geGe + '"') else ""} \
      ~{if defined(ioIo) then ("--io " +  '"' + ioIo + '"') else ""} \
      ~{if defined(ieIe) then ("--ie " +  '"' + ieIe + '"') else ""} \
      ~{if defined(epEp) then ("--ep " +  '"' + epEp + '"') else ""} \
      ~{if defined(lcoLco) then ("--lco " +  '"' + lcoLco + '"') else ""} \
      ~{if defined(lceLce) then ("--lce " +  '"' + lceLce + '"') else ""} \
      ~{if defined(rcoRco) then ("--rco " +  '"' + rcoRco + '"') else ""} \
      ~{if defined(rceRce) then ("--rce " +  '"' + rceRce + '"') else ""}
  >>>
}