version 1.0

task Duphold {
  input {
    File? vcf
    File? bam
    File? fast_a
    File? snp
    Int? threads
    String? output_vcfbcf_default
    Boolean? drop
  }
  command <<<
    duphold \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(snp) then ("--snp " +  '"' + snp + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_vcfbcf_default) then ("--output " +  '"' + output_vcfbcf_default + '"') else ""} \
      ~{if (drop) then "--drop" else ""}
  >>>
  parameter_meta {
    vcf: "path to sorted SV VCF/BCF"
    bam: "path to indexed BAM/CRAM"
    fast_a: "indexed fasta reference."
    snp: "optional path to snp/indel VCF/BCF with which to annotate SVs. BCF is highly recommended as it's much faster to parse."
    threads: "number of decompression threads. [default: 4]"
    output_vcfbcf_default: "output VCF/BCF (default is VCF to stdout) [default: -]"
    drop: "drop all samples from a multi-sample --vcf *except* the sample in --bam. useful for parallelization by sample followed by merge."
  }
  output {
    File out_stdout = stdout()
  }
}