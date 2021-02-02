version 1.0

task MagpurifyCoverage {
  input {
    Int? max_deviation
    Boolean? weighted_mean
    Int? threads
    String fna
    String out
    String files
  }
  command <<<
    magpurify coverage \
      ~{fna} \
      ~{out} \
      ~{files} \
      ~{if defined(max_deviation) then ("--max-deviation " +  '"' + max_deviation + '"') else ""} \
      ~{if (weighted_mean) then "--weighted-mean" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    max_deviation: "Contigs with coverage greater than [max-deviation *\\nmean coverage] or less than [(1/max-deviation) * mean\\ncoverage] will be flagged as outliers (default: 5.0)"
    weighted_mean: "Compute the mean weighted by the contig length\\n(default: False)"
    threads: "Number of CPUs to use (default: 1)"
    fna: "Path to input genome in FASTA format"
    out: "Output directory to store results and intermediate"
    files: "bams                  Path to input sorted BAM file(s)"
  }
  output {
    File out_stdout = stdout()
  }
}