version 1.0

task Pbgzip {
  input {
    Boolean? write_keep_files
    Boolean? decompress
    Boolean? overwrite_files_asking
    Int? number_of_threads
    Int? compress_type_bz
    Boolean? _compression_level
    Boolean? block_size_when
    File? var_file
  }
  command <<<
    pbgzip \
      ~{var_file} \
      ~{if (write_keep_files) then "-c" else ""} \
      ~{if (decompress) then "-d" else ""} \
      ~{if (overwrite_files_asking) then "-f" else ""} \
      ~{if defined(number_of_threads) then ("-n " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(compress_type_bz) then ("-t " +  '"' + compress_type_bz + '"') else ""} \
      ~{if (_compression_level) then "-1" else ""} \
      ~{if (block_size_when) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    write_keep_files: "write on standard output, keep original files unchanged"
    decompress: "decompress"
    overwrite_files_asking: "overwrite files without asking"
    number_of_threads: "number of threads [8]"
    compress_type_bz: "the compress type (0 - gz, 1 - bz2) [0]"
    _compression_level: ".. -9  the compression level [-1]"
    block_size_when: "the block size when reading uncompressed data (must be less than or equal to 65536; -1 is auto) [-1]"
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}