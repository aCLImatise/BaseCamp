version 1.0

task FbaKallistoWrapper {
  input {
    Int? read_one
    Int? read_two
    String? whitelist
    String? feature_ref
    Int? technology
    File? specify_output_file
    Int? threads
    Directory? output_directory
  }
  command <<<
    fba kallisto_wrapper \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if defined(whitelist) then ("--whitelist " +  '"' + whitelist + '"') else ""} \
      ~{if defined(feature_ref) then ("--feature_ref " +  '"' + feature_ref + '"') else ""} \
      ~{if defined(technology) then ("--technology " +  '"' + technology + '"') else ""} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0"
  }
  parameter_meta {
    read_one: "specify fastq file for read 1"
    read_two: "specify fastq file for read 2"
    whitelist: "specify a whitelist of accepted cell barcodes"
    feature_ref: "specify a reference of feature barcodes"
    technology: "specify feature barcoding technology. The default is\\n10xv3"
    specify_output_file: "specify an output file"
    threads: "specify number of kallisto/bustools threads to launch.\\nDefault (1)"
    output_directory: "specify a temp directory. Default (./kallisto)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
    Directory out_output_directory = "${in_output_directory}"
  }
}