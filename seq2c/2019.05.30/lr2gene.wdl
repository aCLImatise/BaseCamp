version 1.0

task Lr2gene.pl {
  input {
    Int nN
  }
  command <<<
    lr2gene.pl \
      ~{if defined(nN) then ("-N " +  '"' + nN + '"') else ""}
  >>>
}