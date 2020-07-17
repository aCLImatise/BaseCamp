version 1.0

task MagpurifyCoverage {
  input {
    Int? max_deviation
    Boolean? weighted_mean
    String? threads
    String fna
    String out
    String bams
  }
  command <<<
    magpurify coverage \
      ~{fna} \
      ~{out} \
      ~{bams} \
      ~{if defined(max_deviation) then ("--max-deviation " +  '"' + max_deviation + '"') else ""} \
      ~{true="--weighted-mean" false="" weighted_mean} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    max_deviation: "Contigs with coverage greater than [max-deviation * mean coverage] or less than [(1/max-deviation) * mean coverage] will be flagged as outliers (default: 5.0)"
    weighted_mean: "Compute the mean weighted by the contig length (default: False)"
    threads: "Number of CPUs to use (default: 1)"
    fna: "Path to input genome in FASTA format"
    out: "Output directory to store results and intermediate files"
    bams: "Path to input sorted BAM file(s)"
  }
}