version 1.0

task MafToSnpBed {
  input {
    String? xxx
    String database
    String input_dot_maf
    String input_do_tgp
  }
  command <<<
    mafToSnpBed \
      ~{database} \
      ~{input_dot_maf} \
      ~{input_do_tgp} \
      ~{if defined(xxx) then ("-xxx " +  '"' + xxx + '"') else ""}
  >>>
  parameter_meta {
    xxx: ""
    database: ""
    input_dot_maf: ""
    input_do_tgp: ""
  }
  output {
    File out_stdout = stdout()
  }
}