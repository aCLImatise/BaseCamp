version 1.0

task TbprofilerFastaProfile {
  input {
    File? fast_a
    File? prefix
    String? db
    File? external_db
    Directory? dir
    Boolean? txt
    Boolean? csv
    String? add_columns
    String? verbose
  }
  command <<<
    tb_profiler fasta_profile \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tb-profiler:3.0.0--pypyh3252c3a_0"
  }
  parameter_meta {
    fast_a: "VCF file (default: None)"
    prefix: "VCF file (default: None)"
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
    dir: "Storage directory (default: .)"
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    add_columns: "Add additional columns found in the mutation database\\nto the text and csv results (default: None)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
  }
  output {
    File out_stdout = stdout()
  }
}