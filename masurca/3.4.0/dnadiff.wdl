version 1.0

task Dnadiff {
  input {
    String? orOr
  }
  command <<<
    dnadiff \
      ~{orOr}
  >>>
}