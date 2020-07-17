version 1.0

task ClinvarTsvMain {
  input {
    String? b_three_seven_path
    String? b_three_eight_path
    String? work_dir
    String? cores
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
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    b_three_seven_path: "Path to GRCh37 FAI-indexed FASTA file."
    b_three_eight_path: "Path to GRCh38 FAI-indexed FASTA file."
    work_dir: "Path to working directory"
    cores: "Number of cores to use"
    debug: "Enables debugging helps"
    clin_var_tsv: ""
    main: ""
  }
}