version 1.0

task Sample {
  input {
    String? format
    Int? sequences
    Int? random_seed
    String? option_dot_dot_dot
  }
  command <<<
    sample \
      ~{option_dot_dot_dot} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format: "The format ('fasta' or 'fastq' or 'lines') of the\\nsequences (default=fastq)"
    sequences: "The number of sequences to be sampled (default=1)"
    random_seed: "The seed for sequence of pseudo-random integers to\\nbe used in sampling"
    option_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}