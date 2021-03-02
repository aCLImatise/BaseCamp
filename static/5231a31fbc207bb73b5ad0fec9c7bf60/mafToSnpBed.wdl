version 1.0

task MafToSnpBed {
  input {
    String database
    String input_dot_maf
    String input_do_tgp
  }
  command <<<
    mafToSnpBed \
      ~{database} \
      ~{input_dot_maf} \
      ~{input_do_tgp}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database: ""
    input_dot_maf: ""
    input_do_tgp: ""
  }
  output {
    File out_stdout = stdout()
  }
}