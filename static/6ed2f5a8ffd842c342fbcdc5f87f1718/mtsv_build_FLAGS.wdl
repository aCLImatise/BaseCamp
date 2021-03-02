version 1.0

task MtsvbuildFLAGS {
  input {
    String? fast_a
  }
  command <<<
    mtsv_build FLAGS \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}