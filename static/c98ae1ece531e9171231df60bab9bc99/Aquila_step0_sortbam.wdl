version 1.0

task AquilaStep0Sortbam {
  input {
    File? bam_file
    Directory? out_dir
    Int? num_threads_for_sam_tools_sort
  }
  command <<<
    Aquila_step0_sortbam \
      ~{if defined(bam_file) then ("--bam_file " +  '"' + bam_file + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(num_threads_for_sam_tools_sort) then ("--num_threads_for_samtools_sort " +  '"' + num_threads_for_sam_tools_sort + '"') else ""}
  >>>
  parameter_meta {
    bam_file: "Required parameter, BAM file, called by \\\"longranger\\nalign\\\""
    out_dir: "Directory to store Aquila assembly results, default =\\n./Assembly_results"
    num_threads_for_sam_tools_sort: "The number of threads you can define for samtools\\nsort, default = 20\\n"
  }
  output {
    File out_stdout = stdout()
  }
}