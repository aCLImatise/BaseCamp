version 1.0

task DetermineUnjoinablePacbioSubmegas.perl {
  input {
    String fF
    Int minMinRangeRadius
    Float minMinRangeProportion
  }
  command <<<
    determineUnjoinablePacbioSubmegas.perl \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(minMinRangeRadius) then ("--min-range-radius " +  '"' + minMinRangeRadius + '"') else ""} \
      ~{if defined(minMinRangeProportion) then ("--min-range-proportion " +  '"' + minMinRangeProportion + '"') else ""}
  >>>
}