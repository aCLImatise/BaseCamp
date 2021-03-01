version 1.0

task ReadAnalysispyQuantify {
  input {
    String? read
    String? ref_t
    String? location_prefix_expression
    Int? num_threads
  }
  command <<<
    read_analysis_py quantify \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(ref_t) then ("--ref_t " +  '"' + ref_t + '"') else ""} \
      ~{if defined(location_prefix_expression) then ("--output " +  '"' + location_prefix_expression + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read: "Input reads for quantification"
    ref_t: "Reference Transcriptome"
    location_prefix_expression: "The location and prefix of outputting profile (Default\\n= expression)"
    num_threads: "Number of threads for alignment (Default = 1)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}