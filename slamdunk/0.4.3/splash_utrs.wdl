version 1.0

task SplashUtrs {
  input {
    String? reference
    String? bed
    String? read_length
    String? output_dir
    String? snp_rate
  }
  command <<<
    splash utrs \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(snp_rate) then ("--snp-rate " +  '"' + snp_rate + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference fasta file"
    bed: "BED file"
    read_length: "Read length"
    output_dir: "Output directory for mapped BAM files."
    snp_rate: "SNP rate in UTRs"
  }
}