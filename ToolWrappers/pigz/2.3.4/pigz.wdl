version 1.0

task Pigz {
  input {
    Int? compression_level_level
    Boolean? fast
    Int? block_size
    Boolean? stdout
    Boolean? decompress
    Boolean? force
    Boolean? first
    Boolean? independent
    Int? iterations
    Boolean? keep
    Boolean? zip
    Boolean? list
    Boolean? license
    Int? max_splits
    Boolean? no_name
    Boolean? name
    Boolean? one_block
    Int? processes
    Boolean? quiet
    Boolean? recursive
    Boolean? rsync_able
    Boolean? suffix
    Boolean? test
    Boolean? no_time
    Boolean? verbose
    Boolean? zlib
    String? files
  }
  command <<<
    pigz \
      ~{files} \
      ~{if defined(compression_level_level) then ("-11 " +  '"' + compression_level_level + '"') else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if defined(block_size) then ("--blocksize " +  '"' + block_size + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (first) then "--first" else ""} \
      ~{if (independent) then "--independent" else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (zip) then "--zip" else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (license) then "--license" else ""} \
      ~{if defined(max_splits) then ("--maxsplits " +  '"' + max_splits + '"') else ""} \
      ~{if (no_name) then "--no-name" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (one_block) then "--oneblock" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (rsync_able) then "--rsyncable" else ""} \
      ~{if (suffix) then "--suffix" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (no_time) then "--no-time" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (zlib) then "--zlib" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pigz:2.3.4"
  }
  parameter_meta {
    compression_level_level: "Compression level (level 11, zopfli, is much slower)"
    fast: "Compression levels 1 and 9 respectively"
    block_size: "Set compression block size to mmmK (default 128K)"
    stdout: "Write all processed output to stdout (won't delete)"
    decompress: "Decompress the compressed input"
    force: "Force overwrite, compress .gz, links, and to terminal"
    first: "Do iterations first, before block split for -11"
    independent: "Compress blocks independently for damage recovery"
    iterations: "Number of iterations for -11 optimization"
    keep: "Do not delete original file after processing"
    zip: "Compress to PKWare zip (.zip) single entry format"
    list: "List the contents of the compressed input"
    license: "Display the pigz license and quit"
    max_splits: "Maximum number of split blocks for -11"
    no_name: "Do not store or restore file name in/from header"
    name: "Store/restore file name and mod time in/from header"
    one_block: "Do not split into smaller blocks for -11"
    processes: "Allow up to n compression threads (default is the\\nnumber of online processors, or 8 if unknown)"
    quiet: "Print no messages, even on error"
    recursive: "Process the contents of all subdirectories"
    rsync_able: "Input-determined block locations for rsync"
    suffix: ".sss    Use suffix .sss instead of .gz (for compression)"
    test: "Test the integrity of the compressed input"
    no_time: "Do not store or restore mod time in/from header"
    verbose: "Provide more verbose output"
    zlib: "Compress to zlib (.zz) instead of gzip format"
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}