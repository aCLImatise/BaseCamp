version 1.0

task Twopaco {
  input {
    String? twoTwoPaco
  }
  command <<<
    twopaco \
      ~{twoTwoPaco}
  >>>
}