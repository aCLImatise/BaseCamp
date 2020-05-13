version 1.0

task Fastadigest.py {
  input {
    String enzymeEnzymePattern
    Int minMin
    Int maxMax
    Boolean uniqueUnique
  }
  command <<<
    fastadigest.py \
      ~{if defined(enzymeEnzymePattern) then ("--enzyme-pattern " +  '"' + enzymeEnzymePattern + '"') else ""} \
      ~{if defined(minMin) then ("--min " +  '"' + minMin + '"') else ""} \
      ~{if defined(maxMax) then ("--max " +  '"' + maxMax + '"') else ""} \
      ~{true="--unique" false="" uniqueUnique}
  >>>
}