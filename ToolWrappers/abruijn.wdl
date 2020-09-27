version 1.0

task Abruijn {
  input {
    Boolean? debug
    Boolean? resume
    Int? threads
    Int? iterations
    String? platform
    Int? km_er_size
    Int? min_overlap
    Int? min_coverage
    Int? max_coverage
    String reads
    String out_dir
  }
  command <<<
    abruijn \
      ~{reads} \
      ~{out_dir} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if defined(km_er_size) then ("--kmer-size " +  '"' + km_er_size + '"') else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_coverage) then ("--max-coverage " +  '"' + max_coverage + '"') else ""}
  >>>
  parameter_meta {
    debug: "enable debug output"
    resume: "try to resume previous assembly"
    threads: "number of parallel threads (default: 1)"
    iterations: "number of polishing iterations (default: 1)"
    platform: "sequencing platform (default: pacbio)"
    km_er_size: "kmer size (default: auto)"
    min_overlap: "minimum overlap between reads (default: 5000)"
    min_coverage: "minimum kmer coverage (default: auto)"
    max_coverage: "maximum kmer coverage (default: auto)"
    reads: "path to reads file (FASTA format)"
    out_dir: "output directory"
  }
  output {
    File out_stdout = stdout()
  }
}