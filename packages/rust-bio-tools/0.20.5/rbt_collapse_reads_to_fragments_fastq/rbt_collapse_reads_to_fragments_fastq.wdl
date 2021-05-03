version 1.0

task RbtCollapsereadstofragmentsFastq {
  input {
    Boolean? umi_on_reverse
    Boolean? verbose_read_names
    Int? insert_size
    Int? max_seq_dist
    Int? max_umi_dist
    Int? std_dev
    Int? umi_len
    String? flags
    Int fq_one
    Int fq_two
    Int consensus_fq_one
    Int consensus_fq_two
  }
  command <<<
    rbt collapse_reads_to_fragments fastq \
      ~{flags} \
      ~{fq_one} \
      ~{fq_two} \
      ~{consensus_fq_one} \
      ~{consensus_fq_two} \
      ~{if (umi_on_reverse) then "--umi-on-reverse" else ""} \
      ~{if (verbose_read_names) then "--verbose-read-names" else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(max_seq_dist) then ("--max-seq-dist " +  '"' + max_seq_dist + '"') else ""} \
      ~{if defined(max_umi_dist) then ("--max-umi-dist " +  '"' + max_umi_dist + '"') else ""} \
      ~{if defined(std_dev) then ("--std-dev " +  '"' + std_dev + '"') else ""} \
      ~{if defined(umi_len) then ("--umi-len " +  '"' + umi_len + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.5--h4af157f_0"
  }
  parameter_meta {
    umi_on_reverse: "Set if UMI is on reverse read"
    verbose_read_names: "Add list of reads that were merged for each consensus read. Note that this can yield very long FASTQ name\\nlines which cannot be handled by some tools."
    insert_size: "Expected insert size of sequenced fragment (Required for calculating overlapping consensus only)"
    max_seq_dist: "Maximum hamming distance between the sequences of any pair of reads in the same cluster. [default: 2]\\n[possible values: 1, 2, 3, 4, 5, 6, 7, 8]"
    max_umi_dist: "Maximum hamming distance between the UMIs of any pair of reads in the same cluster. [default: 1]"
    std_dev: "Standard deviation of expected insert size. Defines search space of the most likely overlap. (Required for\\ncalculating overlapping consensus only)"
    umi_len: "Length of UMI in read. [default: 8]"
    flags: ""
    fq_one: ""
    fq_two: ""
    consensus_fq_one: ""
    consensus_fq_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}