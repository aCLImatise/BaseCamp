version 1.0

task RunBESST {
  input {
    Boolean yY
    Boolean noNoScore
    String cC
    Array[String]+ fF
    Array[String]+ orientationOrientation
    Array[String]+ rR
    Array[String]+ mM
    Array[String]+ sS
    String zZ
    String zZMin
    String aA
    String bB
    Boolean gG
    Array[String]+ tT
    Array[String]+ eE
    Array[Int]+ kK
    String filterFilterContigs
    Int minMinMapq
    File iterIter
    String scoreScoreCutOff
    Int maxMaxExtensions
    Boolean noNoIlp
    Boolean fasterFasterIlp
    Boolean printPrintScores
    String kK
    String mM
    String oO
    Boolean dD
    Boolean qQ
    Boolean develDevel
    Boolean plotsPlots
    Boolean separateSeparateRepeats
    Boolean dfsDfsTraversal
    Boolean bfsBfsTraversal
    Int maxMaxContigOverlap
  }
  command <<<
    runBESST \
      ~{true="-y" false="" yY} \
      ~{true="--no_score" false="" noNoScore} \
      ~{if defined(cC) then ("-c " +  '"' + cC + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(orientationOrientation) then ("-orientation " +  '"' + orientationOrientation + '"') else ""} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(zZ) then ("-z " +  '"' + zZ + '"') else ""} \
      ~{if defined(zZMin) then ("-z_min " +  '"' + zZMin + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{true="-g" false="" gG} \
      ~{if defined(tT) then ("-T " +  '"' + tT + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(kK) then ("-k " +  '"' + kK + '"') else ""} \
      ~{if defined(filterFilterContigs) then ("-filter_contigs " +  '"' + filterFilterContigs + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min_mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(iterIter) then ("--iter " +  '"' + iterIter + '"') else ""} \
      ~{if defined(scoreScoreCutOff) then ("--score_cutoff " +  '"' + scoreScoreCutOff + '"') else ""} \
      ~{if defined(maxMaxExtensions) then ("--max_extensions " +  '"' + maxMaxExtensions + '"') else ""} \
      ~{true="--NO_ILP" false="" noNoIlp} \
      ~{true="--FASTER_ILP" false="" fasterFasterIlp} \
      ~{true="--print_scores" false="" printPrintScores} \
      ~{if defined(kK) then ("-K " +  '"' + kK + '"') else ""} \
      ~{if defined(mM) then ("-M " +  '"' + mM + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-d" false="" dD} \
      ~{true="-q" false="" qQ} \
      ~{true="-devel" false="" develDevel} \
      ~{true="-plots" false="" plotsPlots} \
      ~{true="--separate_repeats" false="" separateSeparateRepeats} \
      ~{true="--dfs_traversal" false="" dfsDfsTraversal} \
      ~{true="--bfs_traversal" false="" bfsBfsTraversal} \
      ~{if defined(maxMaxContigOverlap) then ("-max_contig_overlap " +  '"' + maxMaxContigOverlap + '"') else ""}
  >>>
}