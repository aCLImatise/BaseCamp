version 1.0

task AquilaStep0SortbamMultilibs {
  input {
    File? bam_file_list
    Directory? out_dir
    Int? required_parameter_sample
    Int? num_threads_for_sam_tools_sort
    String var_4
  }
  command <<<
    Aquila_step0_sortbam_multilibs \
      ~{var_4} \
      ~{if defined(bam_file_list) then ("--bam_file_list " +  '"' + bam_file_list + '"') else ""} \
      ~{if defined(out_dir) then ("--out_dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(required_parameter_sample) then ("--sample_name_list " +  '"' + required_parameter_sample + '"') else ""} \
      ~{if defined(num_threads_for_sam_tools_sort) then ("--num_threads_for_samtools_sort " +  '"' + num_threads_for_sam_tools_sort + '"') else ""}
  >>>
  parameter_meta {
    bam_file_list: "Required Parameter, BAM file list, each BAM file is\\nseperately by comma \\\",\\\". For example: 1.bam,2.bam"
    out_dir: "Directory to store Aquila assembly results, default\\n=./Assembly_results"
    required_parameter_sample: "Required Parameter, The sample names list, each sample\\nname is seperately by comma \\\",\\\". For example:\\nS24385_lysis_2,S24385_lysis_2H"
    num_threads_for_sam_tools_sort: "The number of threads you can define for samtools\\nsort, default = 20\\n"
    var_4: "[--num_threads_for_samtools_sort NUM_THREADS_FOR_SAMTOOLS_SORT]"
  }
  output {
    File out_stdout = stdout()
  }
}