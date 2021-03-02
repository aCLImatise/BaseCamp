version 1.0

task Fucov {
  input {
    Boolean? sort
    Int? min_cov
    Int? min_len
    Int? max_cov
    Int? max_len
    Int? top
  }
  command <<<
    fu_cov \
      ~{if (sort) then "--sort" else ""} \
      ~{if defined(min_cov) then ("--min-cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(max_cov) then ("--max-cov " +  '"' + max_cov + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seqfu:0.8.7--hed695b0_0"
  }
  parameter_meta {
    sort: "Store contigs in memory, and sort them by descending coverage"
    min_cov: "Minimum coverage (default: 0.0)"
    min_len: "Minimum length (default: 0)"
    max_cov: "Maximum coverage (default: 0.0)"
    max_len: "Maximum length (default: 0)"
    top: "Print the first TOP sequences (passing filters) when using --sort (default: 10)"
  }
  output {
    File out_stdout = stdout()
  }
}