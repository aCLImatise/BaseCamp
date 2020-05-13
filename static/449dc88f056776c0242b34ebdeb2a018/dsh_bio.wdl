version 1.0

task DshBio {
  input {
    Boolean aboutAbout
  }
  command <<<
    dsh-bio \
      ~{true="--about" false="" aboutAbout}
  >>>
}