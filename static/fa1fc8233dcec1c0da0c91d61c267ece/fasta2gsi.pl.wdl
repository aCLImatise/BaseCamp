version 1.0

task Fasta2gsipl {
  input {
    Int? help_dot_gsi
  }
  command <<<
    fasta2gsi_pl \
      ~{if defined(help_dot_gsi) then ("--help.gsi " +  '"' + help_dot_gsi + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/snoscan:1.0--pl526h516909a_0"
  }
  parameter_meta {
    help_dot_gsi: "0 sequence names."
  }
  output {
    File out_stdout = stdout()
  }
}