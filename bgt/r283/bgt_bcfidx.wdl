version 1.0

task BgtBcfidx {
  input {
    Int sS
    String? inInBcf
  }
  command <<<
    bgt bcfidx \
      ~{inInBcf} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}