version 1.0

task MtsvBinnerFLAGS {
  input {
    String? fast_a
    String? index
  }
  command <<<
    mtsv-binner FLAGS \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    fast_a: ""
    index: ""
  }
}