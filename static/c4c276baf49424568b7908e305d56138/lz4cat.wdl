version 1.0

task Lz4cat {
  input {
    Boolean? fast_compression_default
    Boolean? _high_compression
    Boolean? decompression_default_extension
    Boolean? _force_compression
    Boolean? overwrite_output_prompting
    Boolean? h_slash_h
    Boolean? display_version_number
    Boolean? _verbose_mode
    Boolean? suppress_warnings_specify
    Boolean? force_write_standard
    Boolean? test_compressed_file
    Boolean? multiple_input_files
    Boolean? compress_using_format
    Boolean? block_size_default
    Boolean? bd
    Boolean? _benchmark_files
    Boolean? iteration_loops_default
  }
  command <<<
    lz4cat \
      ~{true="-1" false="" fast_compression_default} \
      ~{true="-9" false="" _high_compression} \
      ~{true="-d" false="" decompression_default_extension} \
      ~{true="-z" false="" _force_compression} \
      ~{true="-f" false="" overwrite_output_prompting} \
      ~{true="-h/-H" false="" h_slash_h} \
      ~{true="-V" false="" display_version_number} \
      ~{true="-v" false="" _verbose_mode} \
      ~{true="-q" false="" suppress_warnings_specify} \
      ~{true="-c" false="" force_write_standard} \
      ~{true="-t" false="" test_compressed_file} \
      ~{true="-m" false="" multiple_input_files} \
      ~{true="-l" false="" compress_using_format} \
      ~{true="-B" false="" block_size_default} \
      ~{true="-BD" false="" bd} \
      ~{true="-b" false="" _benchmark_files} \
      ~{true="-i" false="" iteration_loops_default}
  >>>
  parameter_meta {
    fast_compression_default: ": Fast compression (default) "
    _high_compression: ": High compression "
    decompression_default_extension: ": decompression (default for .lz4 extension)"
    _force_compression: ": force compression"
    overwrite_output_prompting: ": overwrite output without prompting "
    h_slash_h: ": display help/long help and exit"
    display_version_number: ": display Version number and exit"
    _verbose_mode: ": verbose mode"
    suppress_warnings_specify: ": suppress warnings; specify twice to suppress errors too"
    force_write_standard: ": force write to standard output, even if it is the console"
    test_compressed_file: ": test compressed file integrity"
    multiple_input_files: ": multiple input files (implies automatic output filenames)"
    compress_using_format: ": compress using Legacy format (Linux kernel compression)"
    block_size_default: "#    : Block size [4-7](default : 7)"
    bd: ": Block dependency (improve compression ratio)"
    _benchmark_files: ": benchmark file(s)"
    iteration_loops_default: "#    : iteration loops [1-9](default : 3), benchmark mode only"
  }
}