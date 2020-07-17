version 1.0

task AquilaStep0SortbamMultilibs {
  input {
    String? bam_file_list
    String? out_dir
    String? sample_name_list
    String? num_threads_for_sam_tools_sort
  }
  command <<<
    Aquila_step0_sortbam_multilibs \
      ~{if defined(bam_file_list) then ("--bam_file_list " +  '"' + bam_file_list + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(sample_name_list) then ("--sample_name_list " +  '"' + sample_name_list + '"') else ""} \
      ~{if defined(num_threads_for_sam_tools_sort) then ("--num_threads_for_samtools_sort " +  '"' + num_threads_for_sam_tools_sort + '"') else ""}
  >>>
  parameter_meta {
    bam_file_list: "Required Parameter, BAM file list, each BAM file is seperately by comma \",\". For example: 1.bam,2.bam"
    out_dir: "Directory to store Aquila assembly results, default =./Assembly_results"
    sample_name_list: "Required Parameter, The sample names list, each sample name is seperately by comma \",\". For example: S24385_lysis_2,S24385_lysis_2H"
    num_threads_for_sam_tools_sort: "The number of threads you can define for samtools sort, default = 20"
  }
}