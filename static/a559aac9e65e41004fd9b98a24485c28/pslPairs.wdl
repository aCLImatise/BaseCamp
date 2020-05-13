version 1.0

task PslPairs {
  input {
    String maxMax
    String minMin
    String slopSlopVal
    String nearNearTop
    String miniMiniD
    String minMinOrphanId
    String tTInsert
    String hardHardMax
    Boolean verboseVerbose
    Boolean noNoBin
    Boolean noNoRandom
    Boolean slopSlop
    Boolean shortShort
    Boolean longLong
    Boolean mismatchMismatch
    Boolean orphanOrphan
  }
  command <<<
    pslPairs \
      ~{if defined(maxMax) then ("-max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(minMin) then ("-min " +  '"' + minMin + '"') else ""} \
      ~{if defined(slopSlopVal) then ("-slopval " +  '"' + slopSlopVal + '"') else ""} \
      ~{if defined(nearNearTop) then ("-nearTop " +  '"' + nearNearTop + '"') else ""} \
      ~{if defined(miniMiniD) then ("-minId " +  '"' + miniMiniD + '"') else ""} \
      ~{if defined(minMinOrphanId) then ("-minOrphanId " +  '"' + minMinOrphanId + '"') else ""} \
      ~{if defined(tTInsert) then ("-tInsert " +  '"' + tTInsert + '"') else ""} \
      ~{if defined(hardHardMax) then ("-hardMax " +  '"' + hardHardMax + '"') else ""} \
      ~{true="-verbose" false="" verboseVerbose} \
      ~{true="-noBin" false="" noNoBin} \
      ~{true="-noRandom" false="" noNoRandom} \
      ~{true="-slop" false="" slopSlop} \
      ~{true="-short" false="" shortShort} \
      ~{true="-long" false="" longLong} \
      ~{true="-mismatch" false="" mismatchMismatch} \
      ~{true="-orphan" false="" orphanOrphan}
  >>>
}