version 1.0

task FermiFltuniq {
  input {
    String? inInFa
  }
  command <<<
    fermi fltuniq \
      ~{inInFa}
  >>>
}