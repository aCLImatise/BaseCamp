version 1.0

task Bbcountunique.sh {
  input {
    String in
  }
  command <<<
    bbcountunique.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}