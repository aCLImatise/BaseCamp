version 1.0

task MmseqsResult2flat {
  input {
    Boolean? use_fast_a_header
    Int? verbosity_level_errors
  }
  command <<<
    mmseqs result2flat \
      ~{if defined(use_fast_a_header) then ("--use-fasta-header " +  '"' + use_fast_a_header + '"') else ""} \
      ~{if defined(verbosity_level_errors) then ("-v " +  '"' + verbosity_level_errors + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0"
  }
  parameter_meta {
    use_fast_a_header: "Use the id parsed from the fasta header as the index key instead of using incrementing numeric identifiers [0]"
    verbosity_level_errors: "Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"
  }
  output {
    File out_stdout = stdout()
  }
}