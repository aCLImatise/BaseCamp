version 1.0

task ScrambleFasta.pl {
  input {
    Boolean nN
  }
  command <<<
    scrambleFasta.pl \
      ~{true="-n" false="" nN}
  >>>
}