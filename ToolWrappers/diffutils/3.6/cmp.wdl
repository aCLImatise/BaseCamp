version 1.0

task Cmp {
  input {
    Boolean? print_bytes
    Boolean? verbose
    String? bytes
    Boolean? silent
  }
  command <<<
    cmp \
      ~{if (print_bytes) then "--print-bytes" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_bytes: "print differing bytes"
    verbose: "output byte numbers and differing byte values"
    bytes: "compare at most LIMIT bytes"
    silent: "suppress all normal output"
  }
  output {
    File out_stdout = stdout()
  }
}