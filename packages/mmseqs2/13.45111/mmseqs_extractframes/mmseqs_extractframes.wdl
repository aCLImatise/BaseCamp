version 1.0

task MmseqsExtractframes {
  input {
    Int? forward_frames
    Int? reverse_frames
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
    Int? create_lookup
  }
  command <<<
    mmseqs extractframes \
      ~{if defined(forward_frames) then ("--forward-frames " +  '"' + forward_frames + '"') else ""} \
      ~{if defined(reverse_frames) then ("--reverse-frames " +  '"' + reverse_frames + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""} \
      ~{if defined(create_lookup) then ("--create-lookup " +  '"' + create_lookup + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    forward_frames: "Comma-separated list of frames on the forward strand to be extracted [1,2,3]"
    reverse_frames: "Comma-separated list of frames on the reverse strand to be extracted [1,2,3]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
    create_lookup: "Create database lookup file (can be very large) [0]"
  }
  output {
    File out_stdout = stdout()
  }
}