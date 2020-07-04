version 1.0

task MtsvBuildFLAGS {
  input {
    String? fast_a
    String? index
  }
  command <<<
    mtsv-build FLAGS \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    index: ""
  }
}