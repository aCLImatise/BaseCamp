version 1.0

task Anviinitbam {
  input {
    File? output_file
    Int? num_threads
    String bam_file
  }
  command <<<
    anvi_init_bam \
      ~{bam_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file: "File path to store results."
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast.\\n"
    bam_file: "BAM file to analyze"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}