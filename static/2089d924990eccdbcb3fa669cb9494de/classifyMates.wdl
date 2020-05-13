version 1.0

task ClassifyMates {
  input {
    String gG
    String oO
    String oO
    Int eE
    String tT
    String mM
    String slSl
    String blBl
    Boolean cacheCache
    Boolean cacheCacheOnly
    Boolean qQ
    String minMin
    String maxMax
    Boolean inInNie
    Boolean outOutTie
    String bfsBfs
    String dfsDfs
    String rfsRfs
    Boolean noNoSuspicious
  }
  command <<<
    classifyMates \
      ~{if defined(gG) then ("-G " +  '"' + gG + '"') else ""} \
      ~{if defined(oO) then ("-O " +  '"' + oO + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(mM) then ("-m " +  '"' + mM + '"') else ""} \
      ~{if defined(slSl) then ("-sl " +  '"' + slSl + '"') else ""} \
      ~{if defined(blBl) then ("-bl " +  '"' + blBl + '"') else ""} \
      ~{true="-cache" false="" cacheCache} \
      ~{true="-cacheonly" false="" cacheCacheOnly} \
      ~{true="-q" false="" qQ} \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("-max " +  '"' + maxMax + '"') else ""} \
      ~{true="-innie" false="" inInNie} \
      ~{true="-outtie" false="" outOutTie} \
      ~{if defined(bfsBfs) then ("-bfs " +  '"' + bfsBfs + '"') else ""} \
      ~{if defined(dfsDfs) then ("-dfs " +  '"' + dfsDfs + '"') else ""} \
      ~{if defined(rfsRfs) then ("-rfs " +  '"' + rfsRfs + '"') else ""} \
      ~{true="-nosuspicious" false="" noNoSuspicious}
  >>>
}