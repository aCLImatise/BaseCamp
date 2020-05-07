version 1.0

task Fasta2stab.pl {
  input {
    String lL
    Boolean ignoreIgnoreN
  }
  command <<<
    fasta2stab.pl \
      ~{if defined(lL) then ("-l " +  '"' + lL + '"') else ""} \
      ~{true="-ignore_N" false="" ignoreIgnoreN}
  >>>
}