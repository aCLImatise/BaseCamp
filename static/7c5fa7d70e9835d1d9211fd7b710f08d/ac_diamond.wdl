version 1.0

task AcDiamond {
  input {
    Boolean pP
    Boolean dD
    Boolean aA
    Boolean vV
    Boolean logLog
    String inIn
    Boolean bB
    Boolean sensitiveSensitive
    Boolean zZ
    Boolean qQ
    Boolean kK
    String topTop
    String compressCompress
    Boolean eE
    String minMinScore
    String idId
    Boolean sensitiveSensitive
    Boolean tT
    String gapGapOpen
    String gapGapExtend
    String matrixMatrix
    String segSeg
    Boolean wW
    String xXDrop
    Boolean xX
    String unUnGappedScore
    String hitHitBand
    String hitHitScore
    String bandBand
    String indexIndexMode
    String fetchFetchSize
    Boolean singleSingleDomain
    Boolean oO
    Boolean fF
    Boolean forwardForwardOnly
    String? viewView
  }
  command <<<
    ac-diamond \
      ~{viewView} \
      ~{true="-p" false="" pP} \
      ~{true="-d" false="" dD} \
      ~{true="-a" false="" aA} \
      ~{true="-v" false="" vV} \
      ~{true="--log" false="" logLog} \
      ~{if defined(inIn) then ("--in " +  '"' + inIn + '"') else ""} \
      ~{true="-b" false="" bB} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="-z" false="" zZ} \
      ~{true="-q" false="" qQ} \
      ~{true="-k" false="" kK} \
      ~{if defined(topTop) then ("--top " +  '"' + topTop + '"') else ""} \
      ~{if defined(compressCompress) then ("--compress " +  '"' + compressCompress + '"') else ""} \
      ~{true="-e" false="" eE} \
      ~{if defined(minMinScore) then ("--min-score " +  '"' + minMinScore + '"') else ""} \
      ~{if defined(idId) then ("--id " +  '"' + idId + '"') else ""} \
      ~{true="--sensitive" false="" sensitiveSensitive} \
      ~{true="-t" false="" tT} \
      ~{if defined(gapGapOpen) then ("--gapopen " +  '"' + gapGapOpen + '"') else ""} \
      ~{if defined(gapGapExtend) then ("--gapextend " +  '"' + gapGapExtend + '"') else ""} \
      ~{if defined(matrixMatrix) then ("--matrix " +  '"' + matrixMatrix + '"') else ""} \
      ~{if defined(segSeg) then ("--seg " +  '"' + segSeg + '"') else ""} \
      ~{true="-w" false="" wW} \
      ~{if defined(xXDrop) then ("--xdrop " +  '"' + xXDrop + '"') else ""} \
      ~{true="-X" false="" xX} \
      ~{if defined(unUnGappedScore) then ("--ungapped-score " +  '"' + unUnGappedScore + '"') else ""} \
      ~{if defined(hitHitBand) then ("--hit-band " +  '"' + hitHitBand + '"') else ""} \
      ~{if defined(hitHitScore) then ("--hit-score " +  '"' + hitHitScore + '"') else ""} \
      ~{if defined(bandBand) then ("--band " +  '"' + bandBand + '"') else ""} \
      ~{if defined(indexIndexMode) then ("--index-mode " +  '"' + indexIndexMode + '"') else ""} \
      ~{if defined(fetchFetchSize) then ("--fetch-size " +  '"' + fetchFetchSize + '"') else ""} \
      ~{true="--single-domain" false="" singleSingleDomain} \
      ~{true="-o" false="" oO} \
      ~{true="-f" false="" fF} \
      ~{true="--forwardonly" false="" forwardForwardOnly}
  >>>
}