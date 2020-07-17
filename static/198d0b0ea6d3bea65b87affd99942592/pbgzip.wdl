version 1.0

task Pbgzip {
  input {
    Boolean? write_standard_output
    Boolean? decompress
    Boolean? overwrite_files_asking
    Int? number_of_threads
    Int? the_compress_type
    Boolean? _compression_level
    Boolean? block_size_when
    File? file
  }
  command <<<
    pbgzip \
      ~{file} \
      ~{true="-c" false="" write_standard_output} \
      ~{true="-d" false="" decompress} \
      ~{true="-f" false="" overwrite_files_asking} \
      ~{if defined(number_of_threads) then ("-n " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(the_compress_type) then ("-t " +  '"' + the_compress_type + '"') else ""} \
      ~{true="-1" false="" _compression_level} \
      ~{true="-S" false="" block_size_when}
  >>>
  parameter_meta {
    write_standard_output: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    overwrite_files_asking: "overwrite files without asking"
    number_of_threads: "number of threads [8]"
    the_compress_type: "the compress type (0 - gz, 1 - bz2) [0]"
    _compression_level: ".. -9  the compression level [-1]"
    block_size_when: "the block size when reading uncompressed data (must be less than or equal to 65536; -1 is auto) [-1]"
    file: ""
  }
}