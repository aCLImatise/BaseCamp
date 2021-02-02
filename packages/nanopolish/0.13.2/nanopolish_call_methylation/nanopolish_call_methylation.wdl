version 1.0

task NanopolishCallmethylation {
  input {
    Boolean? verbose
    File? reads
    File? bam
    File? genome
    String? methylation
    Int? threads
    Directory? watch
    Boolean? watch_write_bam
    Directory? watch_process_total
    File? watch_process_index
    Boolean? progress
    Int? batch_size
  }
  command <<<
    nanopolish call_methylation \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(methylation) then ("--methylation " +  '"' + methylation + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(watch) then ("--watch " +  '"' + watch + '"') else ""} \
      ~{if (watch_write_bam) then "--watch-write-bam" else ""} \
      ~{if defined(watch_process_total) then ("--watch-process-total " +  '"' + watch_process_total + '"') else ""} \
      ~{if defined(watch_process_index) then ("--watch-process-index " +  '"' + watch_process_index + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if defined(batch_size) then ("--batchsize " +  '"' + batch_size + '"') else ""}
  >>>
  parameter_meta {
    verbose: "display verbose output"
    reads: "the ONT reads are in fasta/fastq FILE"
    bam: "the reads aligned to the genome assembly are in bam FILE"
    genome: "the genome we are calling methylation for is in fasta FILE"
    methylation: "the type of methylation (cpg,gpc,dam,dcm)"
    threads: "use NUM threads (default: 1)"
    watch: "watch the sequencing run directory DIR and call methylation as data is generated"
    watch_write_bam: "in watch mode, write the alignments for each fastq"
    watch_process_total: "in watch mode, there are TOTAL calling processes running against this directory"
    watch_process_index: "in watch mode, the index of this process is IDX\\nthe previous two options allow you to run multiple independent methylation\\ncalling processes against a single directory. Each process will only call\\nfiles when X mod TOTAL == IDX, where X is the suffix of the fast5 file."
    progress: "print out a progress message"
    batch_size: "the batch size (default: 512)"
  }
  output {
    File out_stdout = stdout()
  }
}