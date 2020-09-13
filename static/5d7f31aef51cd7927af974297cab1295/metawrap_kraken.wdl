version 1.0

task MetawrapKraken {
  input {
    Directory? output_directory
    Int? number_of_threads
    Int? read_subsampling_defaultall
    Boolean? no_preload
  }
  command <<<
    metawrap kraken \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(read_subsampling_defaultall) then ("-s " +  '"' + read_subsampling_defaultall + '"') else ""} \
      ~{if (no_preload) then "--no-preload" else ""}
  >>>
  parameter_meta {
    output_directory: "output directory"
    number_of_threads: "number of threads"
    read_subsampling_defaultall: "read subsampling number (default=all)"
    no_preload: "do not pre-load the kraken DB into memory (slower, but lower memory requirement)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}