version 1.0

task AlleyoopRates {
  input {
    Directory? output_dir
    File? reference
    Int? min_base_quality
    Int? threads
  }
  command <<<
    alleyoop rates \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-basequality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    reference: "Reference fasta file"
    min_base_quality: "Minimal base quality for SNPs (default: 27)"
    threads: "Thread number (default: 1)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}