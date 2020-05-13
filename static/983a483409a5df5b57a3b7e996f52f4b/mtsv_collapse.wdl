version 1.0

task MtsvCollapse {
  input {
    Boolean vV
    String outputOutput
  }
  command <<<
    mtsv-collapse \
      ~{true="-v" false="" vV} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}