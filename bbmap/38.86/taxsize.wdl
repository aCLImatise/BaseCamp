version 1.0

task Taxsize.sh {
  input {
    String in
  }
  command <<<
    taxsize.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}