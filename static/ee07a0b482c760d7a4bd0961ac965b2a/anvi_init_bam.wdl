version 1.0

task AnviInitBam {
  input {
    File? output_file
    String? num_threads
    String bam_file
  }
  command <<<
    anvi-init-bam \
      ~{bam_file} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  parameter_meta {
    output_file: "File path to store results."
    num_threads: "Maximum number of threads to use for multithreading whenever possible. Very conservatively, the default is 1. It is a good idea to not exceed the number of CPUs / cores on your system. Plus, please be careful with this option if you are running your commands on a SGE --if you are clusterizing your runs, and asking for multiple threads to use, you may deplete your resources very fast."
    bam_file: "BAM file to analyze"
  }
}