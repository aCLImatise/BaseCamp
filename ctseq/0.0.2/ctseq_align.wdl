version 1.0

task CtseqAlign {
  input {
    String? ref_dir
    String? dir
    String? forward_adapter
    String? reverse_adapter
    String? cut_adapt_cores
    String? bismark_cores
    String? reads_per_file
  }
  command <<<
    ctseq align \
      ~{if defined(ref_dir) then ("--refDir " +  '"' + ref_dir + '"') else ""} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(forward_adapter) then ("--forwardAdapter " +  '"' + forward_adapter + '"') else ""} \
      ~{if defined(reverse_adapter) then ("--reverseAdapter " +  '"' + reverse_adapter + '"') else ""} \
      ~{if defined(cut_adapt_cores) then ("--cutadaptCores " +  '"' + cut_adapt_cores + '"') else ""} \
      ~{if defined(bismark_cores) then ("--bismarkCores " +  '"' + bismark_cores + '"') else ""} \
      ~{if defined(reads_per_file) then ("--readsPerFile " +  '"' + reads_per_file + '"') else ""}
  >>>
  parameter_meta {
    ref_dir: "Full path to directory where you have already built your methylation reference files. If no '--refDir' is specified, ctseq will look in your current directory."
    dir: "Path to directory where you have your fastq files. If no '--dir' is specified, ctseq will look in your current directory."
    forward_adapter: "adapter sequence to remove from FORWARD reads (default=AGTGTGGGAGGGTAGTTGGTGTT)"
    reverse_adapter: "adapter sequence to remove from REVERSE reads (default=ACTCCCCACCTTCCTCATTCTCTAAGACGGTGT)"
    cut_adapt_cores: "number of cores to use with Cutadapt. Default=1. Highly recommended to run with more than 1 core, try starting with 18 cores"
    bismark_cores: "number of cores to use to align with Bismark. Default=1. Highly recommended to run with more than 1 core, try starting with 6 cores"
    reads_per_file: "number of reads to analyze per fastq file (should only adjust this if you think you are too big of a file through bismark). Default=5000000 (5 million)"
  }
}