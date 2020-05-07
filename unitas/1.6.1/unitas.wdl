version 1.0

task Unitas.pl {
  input {
    String refseqRefseq
    String? xxxXxx
  }
  command <<<
    unitas.pl \
      ~{xxxXxx} \
      ~{if defined(refseqRefseq) then ("-refseq " +  '"' + refseqRefseq + '"') else ""}
  >>>
}