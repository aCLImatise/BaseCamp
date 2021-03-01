version 1.0

task AlleyoopCollapse {
  input {
    Directory? output_dir
    Int? threads
    String t_count
  }
  command <<<
    alleyoop collapse \
      ~{t_count} \
      ~{if defined(output_dir) then ("--outputDir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_dir: "Output directory for mapped BAM files."
    threads: "Thread number (default: 1)\\n"
    t_count: "Tcount file(s)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}