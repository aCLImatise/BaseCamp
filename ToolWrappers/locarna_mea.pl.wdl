version 1.0

task Locarnameapl {
  input {
    String? man
    String loca_rna_me_a
  }
  command <<<
    locarna_mea_pl \
      ~{loca_rna_me_a} \
      ~{if defined(man) then ("--man " +  '"' + man + '"') else ""}
  >>>
  parameter_meta {
    man: "documentation"
    loca_rna_me_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}