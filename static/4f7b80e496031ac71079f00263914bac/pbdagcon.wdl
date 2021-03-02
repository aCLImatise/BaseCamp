version 1.0

task Pbdagcon {
  input {
    Boolean? verbose
    Boolean? align
    Int? trim
    Int? min_length
    Int? min_coverage
    Int? threads
  }
  command <<<
    pbdagcon \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (align) then "--align" else ""} \
      ~{if defined(trim) then ("--trim " +  '"' + trim + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "Turns on verbose logging"
    align: "Align sequences before adding to consensus"
    trim: "Trim alignments on either size"
    min_length: "Minimum length for correction"
    min_coverage: "Minimum coverage for correction"
    threads: "Number of consensus threads"
  }
  output {
    File out_stdout = stdout()
  }
}