version 1.0

task Unitas.pl {
  input {
    String? refseq
  }
  command <<<
    unitas.pl \
      ~{if defined(refseq) then ("-refseq " +  '"' + refseq + '"') else ""}
  >>>
  parameter_meta {
    refseq: "[-refseq sequence_2.fas ...]"
  }
}