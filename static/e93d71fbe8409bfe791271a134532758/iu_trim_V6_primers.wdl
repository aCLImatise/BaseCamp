version 1.0

task IutrimV6primers {
  input {
    Boolean? archaea
    Boolean? debug
    String input_fast_a
  }
  command <<<
    iu_trim_V6_primers \
      ~{input_fast_a} \
      ~{if (archaea) then "--archaea" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/illumina-utils:2.10--py_0"
  }
  parameter_meta {
    archaea: "When set, primers for arhacea is used instead of bacteria."
    debug: "Turn on debug prints."
    input_fast_a: "FASTA file that contain archaeal or bacterial V6 sequences with\\nprimers. This file is expected to be the result of iu-merge-\\npairs analysis with these flags and parameter: \\\"--marker-gene-\\nstringent --retain-only-overlap --max-num-mismatches 0\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}