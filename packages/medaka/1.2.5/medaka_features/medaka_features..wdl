version 1.0

task MedakaFeatures {
  input {
    String medaka
  }
  command <<<
    medaka features_ \
      ~{medaka}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.2.5--py38h64b100c_0"
  }
  parameter_meta {
    medaka: ""
  }
  output {
    File out_stdout = stdout()
  }
}