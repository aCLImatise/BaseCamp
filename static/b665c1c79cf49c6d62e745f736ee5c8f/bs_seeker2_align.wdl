version 1.0

task BsSeeker2Align.py {
  input {
    String inputInput
    Int miniMiniNs
    Int maxMaxIns
    Boolean rrbsRrbs
    String cutCutSite
    String lowLow
    String upUp
    String tagTag
    String startStartBase
    String endEndBase
    File adapterAdapter
    String amAm
    String genomeGenome
    String mismatchesMismatches
    String alignerAligner
    File pathPath
    String dbDb
    Int splitSplitLine
    String outputOutput
    String outputOutputFormat
    Boolean noNoHeader
    File tempTempDir
    String xsXs
    Boolean xXSteve
    File multipleMultipleHit
    File unmappedUnmapped
  }
  command <<<
    bs_seeker2-align.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(miniMiniNs) then ("--minins " +  '"' + miniMiniNs + '"') else ""} \
      ~{if defined(maxMaxIns) then ("--maxins " +  '"' + maxMaxIns + '"') else ""} \
      ~{true="--rrbs" false="" rrbsRrbs} \
      ~{if defined(cutCutSite) then ("--cut-site " +  '"' + cutCutSite + '"') else ""} \
      ~{if defined(lowLow) then ("--low " +  '"' + lowLow + '"') else ""} \
      ~{if defined(upUp) then ("--up " +  '"' + upUp + '"') else ""} \
      ~{if defined(tagTag) then ("--tag " +  '"' + tagTag + '"') else ""} \
      ~{if defined(startStartBase) then ("--start_base " +  '"' + startStartBase + '"') else ""} \
      ~{if defined(endEndBase) then ("--end_base " +  '"' + endEndBase + '"') else ""} \
      ~{if defined(adapterAdapter) then ("--adapter " +  '"' + adapterAdapter + '"') else ""} \
      ~{if defined(amAm) then ("--am " +  '"' + amAm + '"') else ""} \
      ~{if defined(genomeGenome) then ("--genome " +  '"' + genomeGenome + '"') else ""} \
      ~{if defined(mismatchesMismatches) then ("--mismatches " +  '"' + mismatchesMismatches + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(pathPath) then ("--path " +  '"' + pathPath + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(splitSplitLine) then ("--split_line " +  '"' + splitSplitLine + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputFormat) then ("--output-format " +  '"' + outputOutputFormat + '"') else ""} \
      ~{true="--no-header" false="" noNoHeader} \
      ~{if defined(tempTempDir) then ("--temp_dir " +  '"' + tempTempDir + '"') else ""} \
      ~{if defined(xsXs) then ("--XS " +  '"' + xsXs + '"') else ""} \
      ~{true="--XSteve" false="" xXSteve} \
      ~{if defined(multipleMultipleHit) then ("--multiple-hit " +  '"' + multipleMultipleHit + '"') else ""} \
      ~{if defined(unmappedUnmapped) then ("--unmapped " +  '"' + unmappedUnmapped + '"') else ""}
  >>>
}