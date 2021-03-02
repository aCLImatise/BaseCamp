version 1.0

task HomopolishTrain {
  input {
    File? data_frame_dir
    File? output_dir
    String? output_prefix
    Int? threads
  }
  command <<<
    homopolish train \
      ~{if defined(data_frame_dir) then ("--dataframe_dir " +  '"' + data_frame_dir + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/homopolish:0.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    data_frame_dir: "[REQUIRED] Path to a directory for alignment\\ndataframe."
    output_dir: "Path to the output directory. [output]"
    output_prefix: "Prefix for the train model. [train]"
    threads: "Number of threads to use. [1]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}