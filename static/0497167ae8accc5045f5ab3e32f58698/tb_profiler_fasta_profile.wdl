version 1.0

task TbprofilerFastaProfile {
  input {
    String? db
    File? external_db
    Directory? dir
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? add_columns
    String? verbose
    String fast_a
    String prefix
  }
  command <<<
    tb_profiler fasta_profile \
      ~{fast_a} \
      ~{prefix} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:2.8.14--pypyh3252c3a_0"
  }
  parameter_meta {
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
    dir: "Storage directory (default: .)"
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed\\n(default: False)"
    add_columns: "Add additional columns found in the mutation database\\nto the text and pdf results (default: None)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
    fast_a: "VCF file"
    prefix: "VCF file"
  }
  output {
    File out_stdout = stdout()
  }
}