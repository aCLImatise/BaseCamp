version 1.0

task Scala {
  input {
    String? orOr
  }
  command <<<
    scala \
      ~{orOr}
  >>>
}