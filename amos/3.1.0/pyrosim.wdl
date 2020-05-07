version 1.0

task Pyrosim {
  input {
    String? fastFastA
  }
  command <<<
    pyrosim \
      ~{fastFastA}
  >>>
}