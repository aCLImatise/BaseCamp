version 1.0

task SgaPreqc {
  input {
    Boolean? verbose
    Int? threads
    Boolean? simple
    Int? max_contig_length
    File? reference
    Boolean? diploid_reference_mode
    Boolean? force_em
  }
  command <<<
    sga preqc \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (simple) then "--simple" else ""} \
      ~{if defined(max_contig_length) then ("--max-contig-length " +  '"' + max_contig_length + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (diploid_reference_mode) then "--diploid-reference-mode" else ""} \
      ~{if (force_em) then "--force-EM" else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM threads (default: 1)"
    simple: "only compute the metrics that do not need the FM-index"
    max_contig_length: "stop contig extension at N bp (default: 50000)"
    reference: "use the reference FILE to calculate GC plot"
    diploid_reference_mode: "generate metrics assuming that the input data\\nis a reference genome, not a collection of reads"
    force_em: "force preqc to proceed even if the coverage model\\ndoes not converge. This allows the rest of the program to continue\\nbut the branch and genome size estimates may be misleading"
  }
  output {
    File out_stdout = stdout()
  }
}