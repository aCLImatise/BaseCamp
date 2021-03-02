version 1.0

task ArbDnaratesInputDbsavename {
  input {
    String arb_dna_rates
    String var_input
    String? dbname
    String? db_save_name
  }
  command <<<
    arb_dnarates input dbsavename \
      ~{arb_dna_rates} \
      ~{var_input} \
      ~{dbname} \
      ~{db_save_name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arb_dna_rates: ""
    var_input: ""
    dbname: ""
    db_save_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}