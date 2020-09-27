version 1.0

task NanopolishPolya {
  input {
    Boolean? verbose
    String? window
    File? reads
    File? bam
    File? genome
    Int? threads
  }
  command <<<
    nanopolish polya \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    window: "only compute the poly-A lengths for reads in window STR (format: ctg:start_id-end_id)"
    reads: "the 1D ONT direct RNA reads are in fasta FILE"
    bam: "the reads aligned to the genome assembly are in bam FILE"
    genome: "the reference genome assembly for the reads is in FILE"
    threads: "use NUM threads (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}