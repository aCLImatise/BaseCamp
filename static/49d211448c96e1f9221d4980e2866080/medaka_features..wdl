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
    docker: "quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0"
  }
  parameter_meta {
    medaka: ""
  }
  output {
    File out_stdout = stdout()
  }
}