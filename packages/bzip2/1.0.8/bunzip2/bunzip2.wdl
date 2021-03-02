version 1.0

task Bunzip2 {
  input {
    Boolean? decompress
    Boolean? compress
    Boolean? keep
    Boolean? force
    Boolean? test
    Boolean? stdout
    Boolean? quiet
    Boolean? verbose
    Boolean? license
    Boolean? small
    Boolean? set_block_size
    Boolean? fast
    Boolean? best
    String? flags
    String? and
    String? var_input
    String? files
    String? in
    String? any
    String? order
  }
  command <<<
    bunzip2 \
      ~{flags} \
      ~{and} \
      ~{var_input} \
      ~{files} \
      ~{in} \
      ~{any} \
      ~{order} \
      ~{if (decompress) then "--decompress" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (license) then "--license" else ""} \
      ~{if (small) then "--small" else ""} \
      ~{if (set_block_size) then "-1" else ""} \
      ~{if (fast) then "--fast" else ""} \
      ~{if (best) then "--best" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bzip2:1.0.8"
  }
  parameter_meta {
    decompress: "force decompression"
    compress: "force compression"
    keep: "keep (don't delete) input files"
    force: "overwrite existing output files"
    test: "test compressed file integrity"
    stdout: "output to standard out"
    quiet: "suppress noncritical error messages"
    verbose: "be verbose (a 2nd -v gives more)"
    license: "display software version & license"
    small: "use less memory (at most 2500k)"
    set_block_size: ".. -9            set block size to 100k .. 900k"
    fast: "alias for -1"
    best: "alias for -9"
    flags: ""
    and: ""
    var_input: ""
    files: ""
    in: ""
    any: ""
    order: ""
  }
  output {
    File out_stdout = stdout()
  }
}