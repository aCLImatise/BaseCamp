version 1.0

task Genpept2gsipl {
  input {
    Int? help_dot_gsi
  }
  command <<<
    genpept2gsi_pl \
      ~{if defined(help_dot_gsi) then ("--help.gsi " +  '"' + help_dot_gsi + '"') else ""}
  >>>
  parameter_meta {
    help_dot_gsi: "0 sequence names."
  }
  output {
    File out_stdout = stdout()
  }
}