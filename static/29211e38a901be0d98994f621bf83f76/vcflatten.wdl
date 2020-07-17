version 1.0

task Vcflatten {
  input {
    File filename
  }
  command <<<
    vcflatten \
      ~{filename}
  >>>
  parameter_meta {
    filename: ""
  }
}