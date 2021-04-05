version 1.0

task Siannpy {
  input {
    String? db
    Int? threads
    String? paired
    Boolean? report
    Boolean? reads_out
    String? set_reads_fastqfasta
    String? out
    String _keepsam_retain
  }
  command <<<
    siann_py \
      ~{_keepsam_retain} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(paired) then ("--paired " +  '"' + paired + '"') else ""} \
      ~{if (report) then "--report" else ""} \
      ~{if (reads_out) then "--reads_out" else ""} \
      ~{if defined(set_reads_fastqfasta) then ("--reads " +  '"' + set_reads_fastqfasta + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/siann:1.2--hdfd78af_1"
  }
  parameter_meta {
    db: "database of reference genomes to use"
    threads: "number of threads to use for alignment (all by\\ndefault)"
    paired: "second set of reads in pair (if any)"
    report: "turn off the generation of a report"
    reads_out: "turn on the output of species- and strain-specific"
    set_reads_fastqfasta: "Set of reads (FASTQ/FASTA) to be processed"
    out: "Prefix for output files"
    _keepsam_retain: "--keep_sam            retain the aligned reads in SAM format"
  }
  output {
    File out_stdout = stdout()
  }
}