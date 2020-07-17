version 1.0

task Alnsel.pl {
  input {
    String input_dot_aln
    String? names
  }
  command <<<
    alnsel.pl \
      ~{input_dot_aln} \
      ~{names}
  >>>
  parameter_meta {
    input_dot_aln: ""
    names: ""
  }
}