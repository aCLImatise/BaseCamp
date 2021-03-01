version 1.0

task ClinvarTsvMain {
  input {
    Int? b_three_seven_path
    Int? b_three_eight_path
    File? work_dir
    Int? cores
    Boolean? debug
    String clin_var_tsv
    String main
  }
  command <<<
    clinvar_tsv main \
      ~{clin_var_tsv} \
      ~{main} \
      ~{if defined(b_three_seven_path) then ("--b37-path " +  '"' + b_three_seven_path + '"') else ""} \
      ~{if defined(b_three_eight_path) then ("--b38-path " +  '"' + b_three_eight_path + '"') else ""} \
      ~{if defined(work_dir) then ("--work-dir " +  '"' + work_dir + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    b_three_seven_path: "Path to GRCh37 FAI-indexed FASTA file."
    b_three_eight_path: "Path to GRCh38 FAI-indexed FASTA file."
    work_dir: "Path to working directory"
    cores: "Number of cores to use"
    debug: "Enables debugging helps"
    clin_var_tsv: ""
    main: ""
  }
  output {
    File out_stdout = stdout()
  }
}