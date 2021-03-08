version 1.0

task MmseqsSubtractdbs {
  input {
    Float? list_matches_evalue
    Float? e_profile
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs subtractdbs \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(e_profile) then ("--e-profile " +  '"' + e_profile + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    e_profile: "Include sequences matches with < E-value thr. into the profile (>=0.0) [1.000E-03]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}