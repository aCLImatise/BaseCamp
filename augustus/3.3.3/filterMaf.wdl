version 1.0

task FilterMaf.pl {
  input {
    String speciesSpecies
    String minMinSeq
    String intervalInterval
  }
  command <<<
    filterMaf.pl \
      ~{if defined(speciesSpecies) then ("--species " +  '"' + speciesSpecies + '"') else ""} \
      ~{if defined(minMinSeq) then ("--min-seq " +  '"' + minMinSeq + '"') else ""} \
      ~{if defined(intervalInterval) then ("--interval " +  '"' + intervalInterval + '"') else ""}
  >>>
}