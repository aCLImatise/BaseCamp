version 1.0

task Rbmoegrid {
  input {
    String oO
    String receptorReceptor
    String scoringScoring
    String gridGrid
    String gridGrid
    String triposTripos
  }
  command <<<
    rbmoegrid \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(receptorReceptor) then ("- receptor " +  '"' + receptorReceptor + '"') else ""} \
      ~{if defined(scoringScoring) then ("- scoring " +  '"' + scoringScoring + '"') else ""} \
      ~{if defined(gridGrid) then ("- grid " +  '"' + gridGrid + '"') else ""} \
      ~{if defined(gridGrid) then ("- grid " +  '"' + gridGrid + '"') else ""} \
      ~{if defined(triposTripos) then ("- Tripos " +  '"' + triposTripos + '"') else ""}
  >>>
}