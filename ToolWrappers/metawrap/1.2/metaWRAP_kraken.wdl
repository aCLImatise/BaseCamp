version 1.0

task MetaWRAPKraken {
  input {
    Directory? output_directory
    Int? number_of_threads
    Int? read_subsampling_number
    Boolean? no_preload
  }
  command <<<
    metaWRAP kraken \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(read_subsampling_number) then ("-s " +  '"' + read_subsampling_number + '"') else ""} \
      ~{if (no_preload) then "--no-preload" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory: "output directory"
    number_of_threads: "number of threads"
    read_subsampling_number: "read subsampling number (default=all)"
    no_preload: "do not pre-load the kraken DB into memory (slower, but lower memory requirement)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}