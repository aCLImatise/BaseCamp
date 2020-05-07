version 1.0

task Igdiscover {
  input {
    Boolean profileProfile
  }
  command <<<
    igdiscover \
      ~{true="--profile" false="" profileProfile}
  >>>
}