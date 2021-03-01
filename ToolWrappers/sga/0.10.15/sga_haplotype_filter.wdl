version 1.0

task SgaHaplotypefilter {
  input {
    Boolean? verbose
    File? reads
    File? reference
    Boolean? haploid
    String? out_prefix
    Int? threads
  }
  command <<<
    sga haplotype_filter \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (haploid) then "--haploid" else ""} \
      ~{if defined(out_prefix) then ("--out-prefix " +  '"' + out_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "display verbose output"
    reads: "load the FM-index of the reads in FILE"
    reference: "load the reference genome from FILE"
    haploid: "force use of the haploid model"
    out_prefix: "write the passed haplotypes and variants to STR.vcf and STR.fa"
    threads: "use NUM threads to compute the overlaps (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}