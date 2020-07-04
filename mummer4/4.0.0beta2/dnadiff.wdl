version 1.0

task Dnadiff {
  input {
    String or
  }
  command <<<
    dnadiff \
      ~{or}
  >>>
  parameter_meta {
    or: "dnadiff  [options]  -d <delta file>"
  }
}