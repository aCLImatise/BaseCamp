version 1.0

task NetworkBuild {
  input {
    File? correlation_coefficient_method
    Boolean? log
    Int? thread
    Int? pval
    Int? cor
    String? signed
    String? fdr
  }
  command <<<
    network_build \
      ~{if defined(correlation_coefficient_method) then ("--output " +  '"' + correlation_coefficient_method + '"') else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(pval) then ("--pval " +  '"' + pval + '"') else ""} \
      ~{if defined(cor) then ("--cor " +  '"' + cor + '"') else ""} \
      ~{if defined(signed) then ("--signed " +  '"' + signed + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gcen:0.5.1--hc9558a2_0"
  }
  parameter_meta {
    correlation_coefficient_method: "correlation coefficient method (default: spearman)"
    log: "<log, log2 or log10> make a log(x+1) transformation (default: not transform)"
    thread: "cpu cores (default: 2)"
    pval: "p value cutoff (default: 0.001)"
    cor: "correlation coefficient cutoff (default: 0.1)"
    signed: "singed network (default: n)"
    fdr: "calculate FDR (default: n)"
  }
  output {
    File out_stdout = stdout()
  }
}