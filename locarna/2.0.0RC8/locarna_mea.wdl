version 1.0

task LocarnaMea.pl {
  input {
    String? man
    String loca_rna_me_a
    String in_file_dot_pp
  }
  command <<<
    locarna-mea.pl \
      ~{loca_rna_me_a} \
      ~{in_file_dot_pp} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""}
  >>>
  parameter_meta {
    man: "documentation"
    loca_rna_me_a: ""
    in_file_dot_pp: ""
  }
}