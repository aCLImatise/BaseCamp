version 1.0

task AquilaStep0Sortbam {
  input {
    String? bam_file
    String? out_dir
    String? num_threads_for_sam_tools_sort
  }
  command <<<
    Aquila_step0_sortbam \
      ~{if defined(bam_file) then ("--bam_file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(num_threads_for_sam_tools_sort) then ("--num_threads_for_samtools_sort " +  '"' + num_threads_for_sam_tools_sort + '"') else ""}
  >>>
  parameter_meta {
    bam_file: "Required parameter, BAM file, called by \"longranger align\""
    out_dir: "Directory to store Aquila assembly results, default = ./Assembly_results"
    num_threads_for_sam_tools_sort: "The number of threads you can define for samtools sort, default = 20"
  }
}