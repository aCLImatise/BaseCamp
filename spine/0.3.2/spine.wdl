version 1.0

task Spine.pl {
  input {
    String fileFile
    String pctPctCore
    String maxMaxDist
    Boolean lL
    Boolean mM
    String refsRefs
    Boolean miniMini
    Boolean panPanGenome
    String prefixPrefix
    String pctPctId
    String minMinOut
    String threadsThreads
    Boolean breakBreakLen
    Boolean minMinCluster
    Boolean diagDiagDiff
    Boolean diagDiagFactor
    Boolean minMinMatch
    Boolean noNoSimplify
  }
  command <<<
    spine.pl \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(pctPctCore) then ("--pctcore " +  '"' + pctPctCore + '"') else ""} \
      ~{if defined(maxMaxDist) then ("--maxdist " +  '"' + maxMaxDist + '"') else ""} \
      ~{true="-l" false="" lL} \
      ~{true="-m" false="" mM} \
      ~{if defined(refsRefs) then ("--refs " +  '"' + refsRefs + '"') else ""} \
      ~{true="--mini" false="" miniMini} \
      ~{true="--pangenome" false="" panPanGenome} \
      ~{if defined(prefixPrefix) then ("--prefix " +  '"' + prefixPrefix + '"') else ""} \
      ~{if defined(pctPctId) then ("--pctid " +  '"' + pctPctId + '"') else ""} \
      ~{if defined(minMinOut) then ("--minout " +  '"' + minMinOut + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--breaklen" false="" breakBreakLen} \
      ~{true="--mincluster" false="" minMinCluster} \
      ~{true="--diagdiff" false="" diagDiagDiff} \
      ~{true="--diagfactor" false="" diagDiagFactor} \
      ~{true="--minmatch" false="" minMinMatch} \
      ~{true="--nosimplify" false="" noNoSimplify}
  >>>
}