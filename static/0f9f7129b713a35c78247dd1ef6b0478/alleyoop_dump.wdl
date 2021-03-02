version 1.0

task AlleyoopDump {
  input {
    File? reference
    Directory? snp_directory
    File? vcf
    Directory? output_dir
    Int? min_base_quality
    Int? threads
    String bam
  }
  command <<<
    alleyoop dump \
      ~{bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(snp_directory) then ("--snp-directory " +  '"' + snp_directory + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-basequality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reference: "Reference fasta file"
    snp_directory: "Directory containing SNP files."
    vcf: "Skip SNP step and provide custom variant file."
    output_dir: "Output directory for mapped BAM files."
    min_base_quality: "Minimal base quality for SNPs (default: 0)"
    threads: "Thread number (default: 1)\\n"
    bam: "Bam file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}