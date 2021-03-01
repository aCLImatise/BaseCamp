version 1.0

task Split {
  input {
    Int? suffix_length
    File? additional_suffix
    Int? bytes
    Int? line_bytes
    Boolean? use_numeric_suffixes
    Boolean? numeric_suffixes
    Boolean? use_hex_suffixes
    Boolean? hex_suffixes
    Boolean? elide_empty_files
    File? filter
    Int? lines
    Int? number
    Int? separator
    Boolean? unbuffered
    File? verbose
  }
  command <<<
    split \
      ~{if defined(suffix_length) then ("--suffix-length " +  '"' + suffix_length + '"') else ""} \
      ~{if defined(additional_suffix) then ("--additional-suffix " +  '"' + additional_suffix + '"') else ""} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{if defined(line_bytes) then ("--line-bytes " +  '"' + line_bytes + '"') else ""} \
      ~{if (use_numeric_suffixes) then "-d" else ""} \
      ~{if (numeric_suffixes) then "--numeric-suffixes" else ""} \
      ~{if (use_hex_suffixes) then "-x" else ""} \
      ~{if (hex_suffixes) then "--hex-suffixes" else ""} \
      ~{if (elide_empty_files) then "--elide-empty-files" else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(lines) then ("--lines " +  '"' + lines + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (unbuffered) then "--unbuffered" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    suffix_length: "generate suffixes of length N (default 2)"
    additional_suffix: "append an additional SUFFIX to file names"
    bytes: "put SIZE bytes per output file"
    line_bytes: "put at most SIZE bytes of records per output file"
    use_numeric_suffixes: "use numeric suffixes starting at 0, not alphabetic"
    numeric_suffixes: "[=FROM]  same as -d, but allow setting the start value"
    use_hex_suffixes: "use hex suffixes starting at 0, not alphabetic"
    hex_suffixes: "[=FROM]  same as -x, but allow setting the start value"
    elide_empty_files: "do not generate empty output files with '-n'"
    filter: "write to shell COMMAND; file name is $FILE"
    lines: "put NUMBER lines/records per output file"
    number: "generate CHUNKS output files; see explanation below"
    separator: "use SEP instead of newline as the record separator;\\n'\\0' (zero) specifies the NUL character"
    unbuffered: "immediately copy input to output with '-n r/...'"
    verbose: "print a diagnostic just before each\\noutput file is opened"
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}