version 1.0

task Fasta2stab.pl.bak {
  input {
    String lL
    Boolean ignoreIgnoreN
  }
  command <<<
    fasta2stab.pl.bak \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-ignore_N" false="" ignoreIgnoreN}
  >>>
}