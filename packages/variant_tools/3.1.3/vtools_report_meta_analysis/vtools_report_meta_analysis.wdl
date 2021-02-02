version 1.0

task VtoolsReportMetaAnalysis {
  input {
    Int? beta
    Int? pval
    Int? se
    Int? size
    Array[String] link
    String? method
    Int? to_db
    String? verbosity
    File file
  }
  command <<<
    vtools_report meta_analysis \
      ~{file} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(se) then ("--se " +  '"' + se + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(to_db) then ("--to_db " +  '"' + to_db + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""}
  >>>
  parameter_meta {
    beta: "column number of beta"
    pval: "column number of p-value"
    se: "column number of standard error"
    size: "column number of sample size"
    link: "columns that links entries of two datasets"
    method: "Method (choose from \\\"ssb\\\" for sample based method and\\n\\\"ivb\\\" for inverse variance based method), default set\\nto \\\"ssb\\\""
    to_db: "will write the results also to a sqlite3 database\\ncompatible with vtools associate result format"
    verbosity: "Output error and warning (0), info (1), debug (2) and\\ntrace (3) information to standard output (default to\\n1).\\n"
    file: "Input text files in the format of $vtools associate\\noutput (supports plain text, gz or bz2 compressed text\\nfiles)"
  }
  output {
    File out_stdout = stdout()
  }
}