version 1.0

task Kissplice {
  input {
    String rR
    String kK
    String bB
    String lL
    String mM
    String mM
    String gG
    String oO
    File dD
    String tT
    String sS
    Boolean vV
    Boolean uU
    Int cC
    Int cC
    String zZ
    Int eE
    Int yY
    String mismatchesMismatches
    String countsCounts
    Int minMinOverlap
    String timeoutTimeout
    Boolean outputOutputContext
    Boolean outputOutputPath
    Boolean outputOutputBranchCount
    Boolean keepKeepBccs
    Boolean experimentalExperimental
    Int maxMaxMemory
    Boolean keepKeepCounts
  }
  command <<<
    kissplice \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(gG) then ("-g " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{true="-v" false="" vV} \
      ~{true="-u" false="" uU} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(cC) then ("-C " +  '"' + cC + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(countsCounts) then ("--counts " +  '"' + countsCounts + '"') else ""} \
      ~{if defined(minMinOverlap) then ("--min_overlap " +  '"' + minMinOverlap + '"') else ""} \
      ~{if defined(timeoutTimeout) then ("--timeout " +  '"' + timeoutTimeout + '"') else ""} \
      ~{true="--output-context" false="" outputOutputContext} \
      ~{true="--output-path" false="" outputOutputPath} \
      ~{true="--output-branch-count" false="" outputOutputBranchCount} \
      ~{true="--keep-bccs" false="" keepKeepBccs} \
      ~{true="--experimental" false="" experimentalExperimental} \
      ~{if defined(maxMaxMemory) then ("--max-memory " +  '"' + maxMaxMemory + '"') else ""} \
      ~{true="--keep-counts" false="" keepKeepCounts}
  >>>
}