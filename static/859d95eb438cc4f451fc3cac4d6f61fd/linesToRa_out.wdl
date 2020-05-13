version 1.0

task LinesToRaOut.ra {
  input {
    String? inInTxt
    String? outraOutra
  }
  command <<<
    linesToRa out.ra \
      ~{inInTxt} \
      ~{outraOutra}
  >>>
}