version 1.0

task Lz4 {
  input {
    Boolean? fast_compression_default
    Boolean? _high_compression
    Boolean? decompression_default_lz
    Boolean? _force_compression
    Boolean? overwrite_output_prompting
    Boolean? h_slash_h
    Boolean? display_version_number
    Boolean? _verbose_mode
    Boolean? suppress_warnings_specify
    Boolean? force_write_standard
    Boolean? test_compressed_integrity
    Boolean? multiple_input_files
    Boolean? compress_using_compression
    Boolean? bd
    Boolean? no_frame_crc
    Boolean? content_size
    Boolean? _benchmark_files
    Boolean? iteration_loops_default
  }
  command <<<
    lz4 \
      ~{if (fast_compression_default) then "-1" else ""} \
      ~{if (_high_compression) then "-9" else ""} \
      ~{if (decompression_default_lz) then "-d" else ""} \
      ~{if (_force_compression) then "-z" else ""} \
      ~{if (overwrite_output_prompting) then "-f" else ""} \
      ~{if (h_slash_h) then "-h/-H" else ""} \
      ~{if (display_version_number) then "-V" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if (suppress_warnings_specify) then "-q" else ""} \
      ~{if (force_write_standard) then "-c" else ""} \
      ~{if (test_compressed_integrity) then "-t" else ""} \
      ~{if (multiple_input_files) then "-m" else ""} \
      ~{if (compress_using_compression) then "-l" else ""} \
      ~{if (bd) then "-BD" else ""} \
      ~{if (no_frame_crc) then "--no-frame-crc" else ""} \
      ~{if (content_size) then "--content-size" else ""} \
      ~{if (_benchmark_files) then "-b" else ""} \
      ~{if (iteration_loops_default) then "-i" else ""}
  >>>
  parameter_meta {
    fast_compression_default: ": Fast compression (default)"
    _high_compression: ": High compression"
    decompression_default_lz: ": decompression (default for .lz4 extension)"
    _force_compression: ": force compression"
    overwrite_output_prompting: ": overwrite output without prompting"
    h_slash_h: ": display help/long help and exit"
    display_version_number: ": display Version number and exit"
    _verbose_mode: ": verbose mode"
    suppress_warnings_specify: ": suppress warnings; specify twice to suppress errors too"
    force_write_standard: ": force write to standard output, even if it is the console"
    test_compressed_integrity: ": test compressed file integrity"
    multiple_input_files: ": multiple input files (implies automatic output filenames)"
    compress_using_compression: ": compress using Legacy format (Linux kernel compression)"
    bd: ": Block dependency (improve compression ratio)"
    no_frame_crc: ": disable stream checksum (default:enabled)"
    content_size: ": compressed frame includes original size (default:not present)"
    _benchmark_files: ": benchmark file(s)"
    iteration_loops_default: "#    : iteration loops [1-9](default : 3), benchmark mode only"
  }
  output {
    File out_stdout = stdout()
  }
}