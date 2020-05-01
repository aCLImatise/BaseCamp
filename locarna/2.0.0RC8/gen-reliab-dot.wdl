version 1.0

task GenReliabDot.pl {
  input {
    File fF
    File aA
    String sS
  }
  command <<<
    gen-reliab-dot.pl \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(aA) then ("-a " +  '"' + aA + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}