version 1.0

task ChorusNGSselect {
  input {
    String inputInput
    String outputOutput
    Int minMin
    Int maxMax
    Int minMinQuantile
    Int maxMaxQuantile
    Boolean bothBothStrand
    Boolean singleSingleStrand
    String distanceDistance
  }
  command <<<
    ChorusNGSselect \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{if defined(minMinQuantile) then ("--minquantile " +  '"' + minMinQuantile + '"') else ""} \
      ~{if defined(maxMaxQuantile) then ("--maxquantile " +  '"' + maxMaxQuantile + '"') else ""} \
      ~{true="--bothstrand" false="" bothBothStrand} \
      ~{true="--singlestrand" false="" singleSingleStrand} \
      ~{if defined(distanceDistance) then ("--distance " +  '"' + distanceDistance + '"') else ""}
  >>>
}