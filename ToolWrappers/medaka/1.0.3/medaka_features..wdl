version 1.0

task MedakaFeatures {
  input {
    String medaka
  }
  command <<<
    medaka features_ \
      ~{medaka}
  >>>
  parameter_meta {
    medaka: ""
  }
  output {
    File out_stdout = stdout()
  }
}