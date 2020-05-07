version 1.0

task ChainFilter {
  input {
    String qQ
    String notNotQ
    String tT
    String notNotT
    String onlyOnly
    String restrictRestrict
    String restrictRestrict
    String qQStartMin
    String qQStartMax
    String restrictRestrict
    String restrictRestrict
    String tTStartMin
    String tTStartMax
    String restrictRestrict
    String restrictRestrict
    String qQOverlapStart
    String qQOverlapEnd
    String tTOverlapStart
    String tTOverlapEnd
    Boolean strandStrand
    Boolean longLong
    Boolean zeroZeroGap
    String minMinGapless
    String qmQmInGap
    String tmTmInGap
    String qmaxQmaxGap
    String tmaxTmaxGap
    String qmQmInSize
    String qQMaxsize
    String tmTmInSize
    String tmaxTmaxSize
    Boolean noNoRandom
    Boolean noNoHap
  }
  command <<<
    chainFilter \
      ~{if defined(qQ) then ("-q " +  '"' + qQ + '"') else ""} \
      ~{if defined(notNotQ) then ("-notQ " +  '"' + notNotQ + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(notNotT) then ("-notT " +  '"' + notNotT + '"') else ""} \
      ~{if defined(onlyOnly) then ("- only " +  '"' + onlyOnly + '"') else ""} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(qQStartMin) then ("-qStartMin " +  '"' + qQStartMin + '"') else ""} \
      ~{if defined(qQStartMax) then ("-qStartMax " +  '"' + qQStartMax + '"') else ""} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(tTStartMin) then ("-tStartMin " +  '"' + tTStartMin + '"') else ""} \
      ~{if defined(tTStartMax) then ("-tStartMax " +  '"' + tTStartMax + '"') else ""} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(restrictRestrict) then ("- restrict " +  '"' + restrictRestrict + '"') else ""} \
      ~{if defined(qQOverlapStart) then ("-qOverlapStart " +  '"' + qQOverlapStart + '"') else ""} \
      ~{if defined(qQOverlapEnd) then ("-qOverlapEnd " +  '"' + qQOverlapEnd + '"') else ""} \
      ~{if defined(tTOverlapStart) then ("-tOverlapStart " +  '"' + tTOverlapStart + '"') else ""} \
      ~{if defined(tTOverlapEnd) then ("-tOverlapEnd " +  '"' + tTOverlapEnd + '"') else ""} \
      ~{true="-strand" false="" strandStrand} \
      ~{true="-long" false="" longLong} \
      ~{true="-zeroGap" false="" zeroZeroGap} \
      ~{if defined(minMinGapless) then ("-minGapless " +  '"' + minMinGapless + '"') else ""} \
      ~{if defined(qmQmInGap) then ("-qMinGap " +  '"' + qmQmInGap + '"') else ""} \
      ~{if defined(tmTmInGap) then ("-tMinGap " +  '"' + tmTmInGap + '"') else ""} \
      ~{if defined(qmaxQmaxGap) then ("-qMaxGap " +  '"' + qmaxQmaxGap + '"') else ""} \
      ~{if defined(tmaxTmaxGap) then ("-tMaxGap " +  '"' + tmaxTmaxGap + '"') else ""} \
      ~{if defined(qmQmInSize) then ("-qMinSize " +  '"' + qmQmInSize + '"') else ""} \
      ~{if defined(qQMaxsize) then ("-qMaxSize " +  '"' + qQMaxsize + '"') else ""} \
      ~{if defined(tmTmInSize) then ("-tMinSize " +  '"' + tmTmInSize + '"') else ""} \
      ~{if defined(tmaxTmaxSize) then ("-tMaxSize " +  '"' + tmaxTmaxSize + '"') else ""} \
      ~{true="-noRandom" false="" noNoRandom} \
      ~{true="-noHap" false="" noNoHap}
  >>>
}