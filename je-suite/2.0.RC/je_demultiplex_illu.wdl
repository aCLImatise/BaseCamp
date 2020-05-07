version 1.0

task JeDemultiplexIllu {
  input {
    String? orOr
  }
  command <<<
    je demultiplex-illu \
      ~{orOr}
  >>>
}