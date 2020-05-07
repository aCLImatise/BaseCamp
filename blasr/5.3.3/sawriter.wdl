version 1.0

task Sawriter {
  input {
    String? orOr
  }
  command <<<
    sawriter \
      ~{orOr}
  >>>
}