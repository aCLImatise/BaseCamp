version 1.0

task AlleyoopReadseparator {
  input {
    Directory? output_dir
    Directory? snp_directory
    File? vcf
    File? reference
    Int? conversion_threshold
    Int? min_base_qual
    Int? threads
    String bam
  }
  command <<<
    alleyoop read_separator \
      ~{bam} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(snp_directory) then ("--snp-directory " +  '"' + snp_directory + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(conversion_threshold) then ("--conversion-threshold " +  '"' + conversion_threshold + '"') else ""} \
      ~{if defined(min_base_qual) then ("--min-base-qual " +  '"' + min_base_qual + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for bam files."
    snp_directory: "Directory containing SNP files."
    vcf: "Skip SNP step and provide custom variant file."
    reference: "Reference fasta file"
    conversion_threshold: "Number of T>C conversions required to count read as\\nT>C read (default: 1)"
    min_base_qual: "Min base quality for T -> C conversions (default: 27)"
    threads: "Thread number (default: 1)\\n"
    bam: "Bam file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}