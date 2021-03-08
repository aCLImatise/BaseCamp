version 1.0

task MmseqsSummarizetabs {
  input {
    Float? list_matches_evalue
    Float? list_matches_fraction
    Float? overlap
    Int? threads
    Int? compressed
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs summarizetabs \
      ~{if defined(list_matches_evalue) then ("-e " +  '"' + list_matches_evalue + '"') else ""} \
      ~{if defined(list_matches_fraction) then ("-c " +  '"' + list_matches_fraction + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(compressed) then ("--compressed " +  '"' + compressed + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    list_matches_evalue: "List matches below this E-value (range 0.0-inf) [1.000E-03]"
    list_matches_fraction: "List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]"
    overlap: "Maximum overlap of covered regions [0.000]"
    threads: "Number of CPU-cores used (all by default) [2]"
    compressed: "Write compressed output [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}