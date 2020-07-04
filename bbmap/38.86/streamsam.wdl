version 1.0

task Streamsam.sh {
  input {
    String in
  }
  command <<<
    streamsam.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}