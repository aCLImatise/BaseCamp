version 1.0

task Fastadigeststats.py {
  input {
    String enzymeEnzymePattern
    Int minMin
    Int maxMax
    Boolean parallelParallel
  }
  command <<<
    fastadigeststats.py \
      ~{if defined(enzymeEnzymePattern) then ("--enzyme-pattern " +  '"' + enzymeEnzymePattern + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="--parallel" false="" parallelParallel}
  >>>
}