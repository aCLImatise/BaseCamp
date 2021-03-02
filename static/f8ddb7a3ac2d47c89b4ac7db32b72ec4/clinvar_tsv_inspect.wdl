version 1.0

task ClinvarTsvInspect {
  input {
    File? work_dir
    String clin_var_tsv
    String inspect
  }
  command <<<
    clinvar_tsv inspect \
      ~{clin_var_tsv} \
      ~{inspect} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    work_dir: "Path to working directory"
    clin_var_tsv: ""
    inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}