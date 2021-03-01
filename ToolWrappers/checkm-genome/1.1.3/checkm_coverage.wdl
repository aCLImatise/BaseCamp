version 1.0

task CheckmCoverage {
  input {
    Directory? extension
    Boolean? all_reads
    Int? min_align
    Int? max_edit_dist
    Int? min_qc
    Int? threads
    Boolean? quiet
    String bin_dir
    String output_file
    String bam_files
  }
  command <<<
    checkm coverage \
      ~{bin_dir} \
      ~{output_file} \
      ~{bam_files} \
      ~{if defined(extension) then ("--extension " +  '"' + extension + '"') else ""} \
      ~{if (all_reads) then "--all_reads" else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if defined(max_edit_dist) then ("--max_edit_dist " +  '"' + max_edit_dist + '"') else ""} \
      ~{if defined(min_qc) then ("--min_qc " +  '"' + min_qc + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/checkm-genome:1.1.3--py_1"
  }
  parameter_meta {
    extension: "extension of bins (other files in directory are ignored) (default: fna)"
    all_reads: "use all reads to estimate coverage instead of just those in proper pairs"
    min_align: "minimum alignment length as percentage of read length (default: 0.98)"
    max_edit_dist: "maximum edit distance as percentage of read length (default: 0.02)"
    min_qc: "minimum quality score (in phred) (default: 15)"
    threads: "number of threads (default: 1)"
    quiet: "suppress console output"
    bin_dir: "directory containing bins (fasta format)"
    output_file: "print results to file"
    bam_files: "BAM files to parse"
  }
  output {
    File out_stdout = stdout()
  }
}