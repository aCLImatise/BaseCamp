version 1.0

task LorikeetFixLineages {
  input {
    String distanceDistance
    String fractionFraction
  }
  command <<<
    lorikeet fix-lineages \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""} \
      ~{if defined(fractionFraction) then ("--fraction " +  '"' + fractionFraction + '"') else ""}
  >>>
}