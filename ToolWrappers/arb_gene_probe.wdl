version 1.0

task ArbGeneProbe {
  input {
    String input_database
    String output_database
  }
  command <<<
    arb_gene_probe \
      ~{input_database} \
      ~{output_database}
  >>>
  parameter_meta {
    input_database: ""
    output_database: ""
  }
  output {
    File out_stdout = stdout()
  }
}