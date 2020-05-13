version 1.0

task Wgsim {
  input {
    Float rR
    Float rR
    Float xX
    Int sS
    Float aA
    String? inInReffA
    String? outOutRead1fq
    String? outOutRead2fq
  }
  command <<<
    wgsim \
      ~{inInReffA} \
      ~{if defined(rR) then ("-r " +  '"' + rR + '"') else ""} \
      ~{if defined(rR) then ("-R " +  '"' + rR + '"') else ""} \
      ~{if defined(xX) then ("-X " +  '"' + xX + '"') else ""} \
      ~{if defined(sS) then ("-S " +  '"' + sS + '"') else ""} \
      ~{if defined(aA) then ("-A " +  '"' + aA + '"') else ""} \
      ~{outOutRead1fq} \
      ~{outOutRead2fq}
  >>>
}