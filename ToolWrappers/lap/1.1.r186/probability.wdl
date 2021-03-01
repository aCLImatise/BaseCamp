version 1.0

task Probability {
  input {
    File? assembly
    Float? accuracy
    Int? delta_std_dev
    File? reads_format
    Boolean? no_seeds
    Boolean? print_headers
    Int? separation_mean
    Int? separation_std_dev
    Boolean? use_mates
    String probability
  }
  command <<<
    probability \
      ~{probability} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(accuracy) then ("--accuracy " +  '"' + accuracy + '"') else ""} \
      ~{if defined(delta_std_dev) then ("--delta-std-dev " +  '"' + delta_std_dev + '"') else ""} \
      ~{if defined(reads_format) then ("--reads-format " +  '"' + reads_format + '"') else ""} \
      ~{if (no_seeds) then "--no-seeds" else ""} \
      ~{if (print_headers) then "--print-headers" else ""} \
      ~{if defined(separation_mean) then ("--separation-mean " +  '"' + separation_mean + '"') else ""} \
      ~{if defined(separation_std_dev) then ("--separation-std-dev " +  '"' + separation_std_dev + '"') else ""} \
      ~{if (use_mates) then "--use-mates" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    assembly: "The reference sequence from which the reads are\\nsupposed to have been generated"
    accuracy: "The probability that a base is read accurately\\n(default=0.98)"
    delta_std_dev: "The number of standard deviations to include when\\ncalculating the separation region probability\\n(default=3)"
    reads_format: "The format ('fasta' or 'fastq') of the file\\ncontaining the reads (default=fastq)"
    no_seeds: "Do not use seeds to speed up the calculations. Use\\nfull dynamic programming. This is very slow"
    print_headers: "Print the header of each read before its"
    separation_mean: "The mean length of the separation between the\\npaired reads"
    separation_std_dev: "The standard deviation of the mean length of the\\nseparation"
    use_mates: "Calculate mate-pair probability."
    probability: "-s, --seed-length=LENGTH   The length of the exact seeds (default=30)"
  }
  output {
    File out_stdout = stdout()
  }
}