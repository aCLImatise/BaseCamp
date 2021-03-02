version 1.0

task Convertsamforrsem {
  input {
    Int? num_threads
    String? memory_per_thread
    String output_file_name
  }
  command <<<
    convert_sam_for_rsem \
      ~{output_file_name} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(memory_per_thread) then ("--memory-per-thread " +  '"' + memory_per_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    num_threads: "Set the number of threads to be used for converting. (Default: 1)"
    memory_per_thread: "Set the maximum allowable memory per thread. <string> represents the\\nmemory and accepts suffices 'K/M/G'. (Default: 1G)"
    output_file_name: "The output name for the converted file. 'convert-sam-for-rsem' will\\noutput a BAM with the name 'output_file_name.bam'."
  }
  output {
    File out_stdout = stdout()
  }
}