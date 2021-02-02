version 1.0

task Mtsvbuild {
  input {
    Boolean? include_flag_trigger
    File? fast_a
    Int? sample_interval
    File? index
  }
  command <<<
    mtsv_build \
      ~{if (include_flag_trigger) then "-v" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(sample_interval) then ("--sample-interval " +  '"' + sample_interval + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""}
  >>>
  parameter_meta {
    include_flag_trigger: "Include this flag to trigger debug-level logging."
    fast_a: "Path to FASTA database file."
    sample_interval: "Sampling interval for index generation. Smaller = more memory usage, slightly  faster queries. Larger = less\\nmemory usage slightly slower queries. [default: 32]"
    index: "Absolute path to mtsv index file."
  }
  output {
    File out_stdout = stdout()
  }
}