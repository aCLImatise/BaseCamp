version 1.0

task BetaDiversitypy {
  input {
    Array[String] input_files
    String? type
    Int? columns
    String? level
  }
  command <<<
    beta_diversity_py \
      ~{if defined(input_files) then ("--input-files " +  '"' + input_files + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(columns) then ("--columns " +  '"' + columns + '"') else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    input_files: "Input files (one per community) for which to compare\\nfor bray-curtis dissimiliarity metrics"
    type: "Type of input file[s]: single, simple [tab-delimited,\\nspecify --cols], bracken, kreport, kreport2, krona.\\nSee docs for details"
    columns: "Specify category/counts separated by single comma:\\ncat,counts (1 = first col)"
    level: "For Kraken or Krona files, taxonomy level for which to\\ncompare samples. Default: all\\n"
  }
  output {
    File out_stdout = stdout()
  }
}