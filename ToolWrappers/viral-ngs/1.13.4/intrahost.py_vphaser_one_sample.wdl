version 1.0

task IntrahostpyVphaserOneSample {
  input {
    Int? v_phaser_num_threads
    Int? min_reads_each
    Int? max_bias
    Boolean? remove_doubly_mapped_reads
    String? loglevel
    String in_bam
    String in_cons_fast_a
    String out_tab
  }
  command <<<
    intrahost_py vphaser_one_sample \
      ~{in_bam} \
      ~{in_cons_fast_a} \
      ~{out_tab} \
      ~{if defined(v_phaser_num_threads) then ("--vphaserNumThreads " +  '"' + v_phaser_num_threads + '"') else ""} \
      ~{if defined(min_reads_each) then ("--minReadsEach " +  '"' + min_reads_each + '"') else ""} \
      ~{if defined(max_bias) then ("--maxBias " +  '"' + max_bias + '"') else ""} \
      ~{if (remove_doubly_mapped_reads) then "--removeDoublyMappedReads" else ""} \
      ~{if defined(loglevel) then ("--loglevel " +  '"' + loglevel + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    v_phaser_num_threads: "Number of threads in call to V-Phaser 2."
    min_reads_each: "Minimum number of reads on each strand (default: 5)."
    max_bias: "Maximum allowable ratio of number of reads on the two\\nstrands (default: 10). Ignored if minReadsEach = 0."
    remove_doubly_mapped_reads: "When calling V-Phaser, remove reads mapping to more\\nthan one contig. Default is to keep the reads."
    loglevel: "Verboseness of output. [default: DEBUG]"
    in_bam: "Input Bam file."
    in_cons_fast_a: "Consensus assembly fasta."
    out_tab: "Tab-separated headerless output file."
  }
  output {
    File out_stdout = stdout()
  }
}