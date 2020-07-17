version 1.0

task MtsvBuild {
  input {
    Boolean? include_flag_trigger
    String? fast_a
    String? sample_interval
    String? index
  }
  command <<<
    mtsv-build \
      ~{true="-v" false="" include_flag_trigger} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(sample_interval) then ("--sample-interval " +  '"' + sample_interval + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    fast_a: "Path to FASTA database file."
    sample_interval: "Sampling interval for index generation. Smaller = more memory usage, slightly  faster queries. Larger = less memory usage slightly slower queries. [default: 32]"
    index: "Absolute path to mtsv index file."
  }
}