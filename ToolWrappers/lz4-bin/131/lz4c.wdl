version 1.0

task Lz4c {
  input {
    Boolean? fast_compression_default
    Boolean? nine
    Boolean? decompression_default_lz
    Boolean? _force_compression
    Boolean? f
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
    Boolean? c_zero
    Boolean? cone
    Boolean? hc
    Boolean? y
  }
  command <<<
    lz4c \
      ~{if (fast_compression_default) then "-1" else ""} \
      ~{if (nine) then "-9" else ""} \
      ~{if (decompression_default_lz) then "-d" else ""} \
      ~{if (_force_compression) then "-z" else ""} \
      ~{if (f) then "-f" else ""} \
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
      ~{if (iteration_loops_default) then "-i" else ""} \
      ~{if (c_zero) then "-c0" else ""} \
      ~{if (cone) then "-c1" else ""} \
      ~{if (hc) then "-hc" else ""} \
      ~{if (y) then "-y" else ""}
  >>>
  parameter_meta {
    fast_compression_default: ": Fast compression (default)"
    nine: ": High compression"
    decompression_default_lz: ": decompression (default for .lz4 extension)"
    _force_compression: ": force compression"
    f: ": overwrite output without prompting"
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
    c_zero: ": fast compression"
    cone: ": high compression"
    hc: ": high compression"
    y: ": overwrite output without prompting"
  }
  output {
    File out_stdout = stdout()
  }
}