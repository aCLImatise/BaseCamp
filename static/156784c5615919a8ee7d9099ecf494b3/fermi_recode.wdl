version 1.0

task FermiRecode {
  input {
    String? inInRld
  }
  command <<<
    fermi recode \
      ~{inInRld}
  >>>
}