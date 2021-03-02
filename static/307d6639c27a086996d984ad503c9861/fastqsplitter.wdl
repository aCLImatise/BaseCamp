version 1.0

task Fastqsplitter {
  input {
    File? fastq_file_scattered
    Int? scatter_output_files
    Int? compression_level
    File? threads_per_file
    Boolean? cyt_hon
    Boolean? python
  }
  command <<<
    fastqsplitter \
      ~{if defined(fastq_file_scattered) then ("--input " +  '"' + fastq_file_scattered + '"') else ""} \
      ~{if defined(scatter_output_files) then ("--output " +  '"' + scatter_output_files + '"') else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{if defined(threads_per_file) then ("--threads-per-file " +  '"' + threads_per_file + '"') else ""} \
      ~{if (cyt_hon) then "--cython" else ""} \
      ~{if (python) then "--python" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fastq_file_scattered: "The fastq file to be scattered."
    scatter_output_files: "Scatter over these output files. Multiple -o flags can\\nbe used. The extensions determine which compression\\nalgorithm will be used. '.gz' for gzip, '.bz2' for\\nbzip2, '.xz' for xz. Other extensions will use no\\ncompression."
    compression_level: "Only applicable when output files have a '.gz'\\nextension. Default=1"
    threads_per_file: "Set the number of compression threads per output file.\\nNOTE: more threads are only useful when using a\\ncompression level > 1. Default=1"
    cyt_hon: "Use the cython version of the file splitting\\nalgorithm. (default)"
    python: "Use the python version of the file splitting\\nalgorithm.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}