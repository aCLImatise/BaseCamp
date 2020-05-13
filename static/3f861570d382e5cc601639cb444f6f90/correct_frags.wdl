version 1.0

task CorrectFrags {
  input {
    String? byBy
  }
  command <<<
    correct-frags \
      ~{byBy}
  >>>
}