version 1.0

task Fastqsplitter {
  input {
    String? fastq_file_scattered
    String? scatter_output_files
    String? compression_level
    String? threads_per_file
    Boolean? cyt_hon
    Boolean? python
  }
  command <<<
    fastqsplitter \
      ~{if defined(fastq_file_scattered) then ("--input " +  '"' + fastq_file_scattered + '"') else ""} \
      ~{if defined(scatter_output_files) then ("--output " +  '"' + scatter_output_files + '"') else ""} \
      ~{if defined(compression_level) then ("--compression-level " +  '"' + compression_level + '"') else ""} \
      ~{if defined(threads_per_file) then ("--threads-per-file " +  '"' + threads_per_file + '"') else ""} \
      ~{true="--cython" false="" cyt_hon} \
      ~{true="--python" false="" python}
  >>>
  parameter_meta {
    fastq_file_scattered: "The fastq file to be scattered."
    scatter_output_files: "Scatter over these output files. Multiple -o flags can be used. The extensions determine which compression algorithm will be used. '.gz' for gzip, '.bz2' for bzip2, '.xz' for xz. Other extensions will use no compression."
    compression_level: "Only applicable when output files have a '.gz' extension. Default=1"
    threads_per_file: "Set the number of compression threads per output file. NOTE: more threads are only useful when using a compression level > 1. Default=1"
    cyt_hon: "Use the cython version of the file splitting algorithm. (default)"
    python: "Use the python version of the file splitting algorithm."
  }
}