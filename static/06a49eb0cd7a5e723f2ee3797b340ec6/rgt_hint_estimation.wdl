version 1.0

task RgtHintEstimation {
  input {
    Int kKNb
    File outputOutputLocation
    String outputOutputPrefix
  }
  command <<<
    rgt-hint estimation \
      ~{if defined(kKNb) then ("--k-nb " +  '"' + kKNb + '"') else ""} \
      ~{if defined(outputOutputLocation) then ("--output-location " +  '"' + outputOutputLocation + '"') else ""} \
      ~{if defined(outputOutputPrefix) then ("--output-prefix " +  '"' + outputOutputPrefix + '"') else ""}
  >>>
}