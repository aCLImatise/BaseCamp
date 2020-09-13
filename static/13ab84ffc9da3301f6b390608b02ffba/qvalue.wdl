version 1.0

task Qvalue {
  input {
    File? null
    String? good_score
    Boolean? pi_zero
    File? pi_zero_file
    Boolean? fdr
    Int? bootstraps
    Int? header
    Int? column
    Boolean? append
    Int? seed
    Int? verbosity
    String p_values
  }
  command <<<
    qvalue \
      ~{p_values} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if defined(good_score) then ("--good-score " +  '"' + good_score + '"') else ""} \
      ~{if (pi_zero) then "--pi-zero" else ""} \
      ~{if defined(pi_zero_file) then ("--pi-zero-file " +  '"' + pi_zero_file + '"') else ""} \
      ~{if (fdr) then "--fdr" else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if defined(header) then ("--header " +  '"' + header + '"') else ""} \
      ~{if defined(column) then ("--column " +  '"' + column + '"') else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    null: ""
    good_score: "|low"
    pi_zero: ""
    pi_zero_file: ""
    fdr: ""
    bootstraps: "(default=1000)"
    header: "(default=0)"
    column: "(default=1)"
    append: ""
    seed: "(default from clock)"
    verbosity: "|2|3|4 (default = 2)"
    p_values: ""
  }
  output {
    File out_stdout = stdout()
  }
}