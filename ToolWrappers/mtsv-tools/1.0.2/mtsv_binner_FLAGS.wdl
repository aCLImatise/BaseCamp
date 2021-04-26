version 1.0

task MtsvbinnerFLAGS {
  input {
    String? fast_a
  }
  command <<<
    mtsv_binner FLAGS \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mtsv-tools:1.0.2--h779adbc_0"
  }
  parameter_meta {
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}