version 1.0

task Rcorrector {
  input {
    String? od
    String? threads_use_default
    Int? max_cor
    Int? max_cork
    Float? wk
    Boolean? stdout
    Boolean? verbose
  }
  command <<<
    rcorrector \
      ~{if defined(od) then ("-od " +  '"' + od + '"') else ""} \
      ~{if defined(threads_use_default) then ("-t " +  '"' + threads_use_default + '"') else ""} \
      ~{if defined(max_cor) then ("-maxcor " +  '"' + max_cor + '"') else ""} \
      ~{if defined(max_cork) then ("-maxcorK " +  '"' + max_cork + '"') else ""} \
      ~{if defined(wk) then ("-wk " +  '"' + wk + '"') else ""} \
      ~{true="-stdout" false="" stdout} \
      ~{true="-verbose" false="" verbose}
  >>>
  parameter_meta {
    od: "(default: ./)"
    threads_use_default: "of threads to use (default: 1)"
    max_cor: ": the maximum number of correction every 100bp (default: 8)"
    max_cork: ": the maximum number of correction within k-bp window (default: 4)"
    wk: ": the proportion of kmers that are used to estimate weak kmer count threshold (default: 0.95)"
    stdout: ": output the corrected sequences to stdout (default: not used)"
    verbose: ": output some correction information to stdout (default: not used)"
  }
}