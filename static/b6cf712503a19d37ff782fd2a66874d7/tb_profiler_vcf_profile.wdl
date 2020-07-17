version 1.0

task TbProfilerVcfProfile {
  input {
    String? db
    String? external_db
    String? dir
    String? reporting_af
    Boolean? txt
    Boolean? csv
    Boolean? pdf
    String? add_columns
    String? verbose
    String vcf
  }
  command <<<
    tb-profiler vcf_profile \
      ~{vcf} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(external_db) then ("--external_db " +  '"' + external_db + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(reporting_af) then ("--reporting_af " +  '"' + reporting_af + '"') else ""} \
      ~{true="--txt" false="" txt} \
      ~{true="--csv" false="" csv} \
      ~{true="--pdf" false="" pdf} \
      ~{if defined(add_columns) then ("--add_columns " +  '"' + add_columns + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  parameter_meta {
    db: "Mutation panel name (default: tbdb)"
    external_db: "Path to db files prefix (overrides \"--db\" parameter) (default: None)"
    dir: "Storage directory (default: .)"
    reporting_af: "Minimum allele frequency to call variants (default: 0.1)"
    txt: "Add text output (default: False)"
    csv: "Add CSV output (default: False)"
    pdf: "Add PDF output. This requires pdflatex to be installed (default: False)"
    add_columns: "Add additional columns found in the mutation database to the text and pdf results (default: None)"
    verbose: "Verbosity increases from 0 to 2 (default: 0)"
    vcf: "VCF file"
  }
}