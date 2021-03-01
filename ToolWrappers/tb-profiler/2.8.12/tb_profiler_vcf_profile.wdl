version 1.0

task TbprofilerVcfProfile {
  input {
    String? db
    File? external_db
    Directory? dir
    Float? reporting_af
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? add_columns
    String? verbose
  }
  command <<<
    tb_profiler vcf_profile \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(reporting_af) then ("--reporting_af " +  '"' + reporting_af + '"') else ""} \
      ~{if (txt) then "--txt" else ""} \
      ~{if (csv) then "--csv" else ""} \
      ~{if (pdf) then "--pdf" else ""} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \\\"--db\\\" parameter)\\n(default: None)"
    dir: "Storage directory (default: .)"
    reporting_af: "Minimum allele frequency to call variants (default:\\n0.1)"
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed\\n(default: False)"
    add_columns: "Add additional columns found in the mutation database\\nto the text and pdf results (default: None)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
  }
  output {
    File out_stdout = stdout()
  }
}