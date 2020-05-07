version 1.0

task HgGcPercent {
  input {
    Int changeChange
    String noNoLoad
    File outputOutput
    String processProcess
    String noNoRandom
    String noNoDots
    String processProcess
    String outputOutput
    String overlapOverlap
    String displayDisplay
    String bedBedRegionIn
    String bedBedRegionOut
  }
  command <<<
    hgGcPercent \
      ~{if defined(changeChange) then ("- change " +  '"' + changeChange + '"') else ""} \
      ~{if defined(noNoLoad) then ("-noLoad " +  '"' + noNoLoad + '"') else ""} \
      ~{if defined(outputOutput) then ("- output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(processProcess) then ("- process " +  '"' + processProcess + '"') else ""} \
      ~{if defined(noNoRandom) then ("-noRandom " +  '"' + noNoRandom + '"') else ""} \
      ~{if defined(noNoDots) then ("-noDots " +  '"' + noNoDots + '"') else ""} \
      ~{if defined(processProcess) then ("- process " +  '"' + processProcess + '"') else ""} \
      ~{if defined(outputOutput) then ("- output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(overlapOverlap) then ("- overlap " +  '"' + overlapOverlap + '"') else ""} \
      ~{if defined(displayDisplay) then ("- display " +  '"' + displayDisplay + '"') else ""} \
      ~{if defined(bedBedRegionIn) then ("-bedRegionIn " +  '"' + bedBedRegionIn + '"') else ""} \
      ~{if defined(bedBedRegionOut) then ("-bedRegionOut " +  '"' + bedBedRegionOut + '"') else ""}
  >>>
}