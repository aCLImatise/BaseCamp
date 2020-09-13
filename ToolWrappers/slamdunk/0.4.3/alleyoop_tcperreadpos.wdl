version 1.0

task AlleyoopTcperreadpos {
  input {
    File? reference
    Directory? snp_directory
    File? vcf
    Int? max_read_length
    Directory? output_dir
    Int? min_base_quality
    Int? threads
    String bam
  }
  command <<<
    alleyoop tcperreadpos \
      ~{bam} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(snp_directory) then ("--snp-directory " +  '"' + snp_directory + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if defined(max_read_length) then ("--max-read-length " +  '"' + max_read_length + '"') else ""} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-basequality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    reference: "Reference fasta file"
    snp_directory: "Directory containing SNP files."
    vcf: "Skip SNP step and provide custom variant file."
    max_read_length: "Max read length in BAM file"
    output_dir: "Output directory for mapped BAM files."
    min_base_quality: "Minimal base quality for SNPs (default: 27)"
    threads: "Thread number (default: 1)\\n"
    bam: "Bam file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}