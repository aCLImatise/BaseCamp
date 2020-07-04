version 1.0

task SgaHaplotypeFilter {
  input {
    Boolean? verbose
    File? reads
    String? reference
    Boolean? haploid
    String? out_prefix
    String? threads
    String? option
  }
  command <<<
    sga haplotype-filter \
      ~{option} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--haploid" false="" haploid} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    reads: "load the FM-index of the reads in FILE"
    reference: "load the reference genome from FILE"
    haploid: "force use of the haploid model"
    out_prefix: "write the passed haplotypes and variants to STR.vcf and STR.fa"
    threads: "use NUM threads to compute the overlaps (default: 1)"
    option: ""
  }
}