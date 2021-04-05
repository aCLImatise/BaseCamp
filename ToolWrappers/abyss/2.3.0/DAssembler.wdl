version 1.0

task DAssembler {
  input {
    Int? max_overlap
    Int? max_mismatch
    Int? min_coverage
    Int? read_length
    Boolean? verbose
    String reads
  }
  command <<<
    DAssembler \
      ~{reads} \
      ~{if defined(max_overlap) then ("--max_overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max_mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if defined(min_coverage) then ("--min_coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(read_length) then ("--read_length " +  '"' + read_length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.0--ha4ec83a_0"
  }
  parameter_meta {
    max_overlap: "maximum tier overlap for consensus calling [10]"
    max_mismatch: "maximum mismatches allowed for consensus calling [2]"
    min_coverage: "minimum coverage to call a consensus base [2]"
    read_length: "read length"
    verbose: "display verbose output"
    reads: "fasta-formatted reads file: the first read is used as the seed."
  }
  output {
    File out_stdout = stdout()
  }
}