version 1.0

task Humann2StrainProfiler {
  input {
    String? original_output_table
    Float? critical_mean
    Int? critical_count
    Float? pinterval_pinterval_pintervalonly
    Int? critical_samples
    String? limit
  }
  command <<<
    humann2_strain_profiler \
      ~{if defined(original_output_table) then ("--input " +  '"' + original_output_table + '"') else ""} \
      ~{if defined(critical_mean) then ("--critical_mean " +  '"' + critical_mean + '"') else ""} \
      ~{if defined(critical_count) then ("--critical_count " +  '"' + critical_count + '"') else ""} \
      ~{if defined(pinterval_pinterval_pintervalonly) then ("-p " +  '"' + pinterval_pinterval_pintervalonly + '"') else ""} \
      ~{if defined(critical_samples) then ("--critical_samples " +  '"' + critical_samples + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    original_output_table: "Original output table (tsv or biom format); default=[TSV/STDIN]"
    critical_mean: "Default mean non-zero gene abundance for inclusion; default=10.0"
    critical_count: "Default non-zero number of genes for inclusion; default=500"
    pinterval_pinterval_pintervalonly: "PINTERVAL, --pinterval PINTERVAL PINTERVAL\\nOnly genes with prevalence in this interval are allowed; default=[1e-10, 1]"
    critical_samples: "Threshold number of samples having strain; default=2"
    limit: "Limit output to species matching a particular pattern, e.g. 'Streptococcus'; default=OFF\\n"
  }
  output {
    File out_stdout = stdout()
  }
}