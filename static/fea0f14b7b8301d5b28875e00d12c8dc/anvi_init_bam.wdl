version 1.0

task Anviinitbam {
  input {
    File? output_file
    Int? num_threads
    String bam_file_analyze
    File raw_bam_file
    File _more_anviinitbam
  }
  command <<<
    anvi_init_bam \
      ~{bam_file_analyze} \
      ~{raw_bam_file} \
      ~{_more_anviinitbam} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/anvio-minimal:7--py_0"
  }
  parameter_meta {
    output_file: "File path to store results. (default: None)"
    num_threads: "Maximum number of threads to use for multithreading\\nwhenever possible. Very conservatively, the default is\\n1. It is a good idea to not exceed the number of CPUs\\n/ cores on your system. Plus, please be careful with\\nthis option if you are running your commands on a SGE\\n--if you are clusterizing your runs, and asking for\\nmultiple threads to use, you may deplete your\\nresources very fast. (default: 1)"
    bam_file_analyze: "BAM file to analyze"
    raw_bam_file: "🍕 Can provide: "
    _more_anviinitbam: "🍺 More on `anvi-init-bam`:"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}