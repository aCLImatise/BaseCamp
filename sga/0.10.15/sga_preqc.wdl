version 1.0

task SgaPreqc {
  input {
    Boolean? verbose
    String? threads
    Boolean? simple
    String? max_contig_length
    File? reference
    Boolean? diploid_reference_mode
    Boolean? force_em
    String? option
  }
  command <<<
    sga preqc \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--simple" false="" simple} \
      ~{if defined(max_contig_length) then ("--max-contig-length " +  '"' + max_contig_length + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--diploid-reference-mode" false="" diploid_reference_mode} \
      ~{true="--force-EM" false="" force_em}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    threads: "use NUM threads (default: 1)"
    simple: "only compute the metrics that do not need the FM-index"
    max_contig_length: "stop contig extension at N bp (default: 50000)"
    reference: "use the reference FILE to calculate GC plot"
    diploid_reference_mode: "generate metrics assuming that the input data is a reference genome, not a collection of reads"
    force_em: "force preqc to proceed even if the coverage model does not converge. This allows the rest of the program to continue but the branch and genome size estimates may be misleading"
    option: ""
  }
}