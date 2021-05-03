version 1.0

task Phirbo {
  input {
    Float? rbo_parameter_range
    Int? truncate_ranked_lists
    Int? number_threads_cpus
    String virus_dir
    String host_dir
    String output_file
  }
  command <<<
    phirbo \
      ~{virus_dir} \
      ~{host_dir} \
      ~{output_file} \
      ~{if defined(rbo_parameter_range) then ("--p " +  '"' + rbo_parameter_range + '"') else ""} \
      ~{if defined(truncate_ranked_lists) then ("--k " +  '"' + truncate_ranked_lists + '"') else ""} \
      ~{if defined(number_threads_cpus) then ("--t " +  '"' + number_threads_cpus + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phirbo:1.0--0"
  }
  parameter_meta {
    rbo_parameter_range: "RBO parameter in range (0, 1) determines the degree of top-\\nweightedness of RBO measure. High p implies strong emphasis\\non top ranked items [default = 0.75]"
    truncate_ranked_lists: "Truncate all ranked lists to the first `k` rankings to\\ncalculate RBO. To disable the truncation use --k 0 [default\\n= 30]"
    number_threads_cpus: "Number of threads (CPUs) [default = 8]"
    virus_dir: "Input directory w/ ranked lists for viruses"
    host_dir: "Input directory w/ ranked lists for hosts"
    output_file: "Output file name"
  }
  output {
    File out_stdout = stdout()
  }
}