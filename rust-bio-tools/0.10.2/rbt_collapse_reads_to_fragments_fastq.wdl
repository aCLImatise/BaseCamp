version 1.0

task RbtCollapseReadsToFragmentsFastq {
  input {
    String? _length_umi
    String? max_hamming_distance_umis
    String? max_hamming_distance_sequences
    Boolean? umi_on_reverse
    Boolean? verbose_read_names
    String? insert_size
    Int? max_seq_dist
    Int? max_umi_dist
    String? std_dev
    String? umi_len
    String? flags
    String fq_one
    String fq_two
    String consensus_fq_one
    String consensus_fq_two
    String? consensus_fq_three
  }
  command <<<
    rbt collapse-reads-to-fragments fastq \
      ~{flags} \
      ~{fq_one} \
      ~{fq_two} \
      ~{consensus_fq_one} \
      ~{consensus_fq_two} \
      ~{consensus_fq_three} \
      ~{if defined(_length_umi) then ("-l " +  '"' + _length_umi + '"') else ""} \
      ~{if defined(max_hamming_distance_umis) then ("-d " +  '"' + max_hamming_distance_umis + '"') else ""} \
      ~{if defined(max_hamming_distance_sequences) then ("-D " +  '"' + max_hamming_distance_sequences + '"') else ""} \
      ~{true="--umi-on-reverse" false="" umi_on_reverse} \
      ~{true="--verbose-read-names" false="" verbose_read_names} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(max_seq_dist) then ("--max-seq-dist " +  '"' + max_seq_dist + '"') else ""} \
      ~{if defined(max_umi_dist) then ("--max-umi-dist " +  '"' + max_umi_dist + '"') else ""} \
      ~{if defined(std_dev) then ("--std-dev " +  '"' + std_dev + '"') else ""} \
      ~{if defined(umi_len) then ("--umi-len " +  '"' + umi_len + '"') else ""}
  >>>
  parameter_meta {
    _length_umi: "\                    # length of UMI"
    max_hamming_distance_umis: "\                     # max hamming distance of UMIs within a cluster"
    max_hamming_distance_sequences: "\                     # max hamming distance of sequences within a cluster"
    umi_on_reverse: "Set if UMI is on reverse read"
    verbose_read_names: "Add list of reads that were merged for each consensus read. Note that this can yield very long FASTQ name lines which cannot be handled by some tools."
    insert_size: "Expected insert size of sequenced fragment (Required for calculating overlapping consensus only)"
    max_seq_dist: "Maximum hamming distance between the sequences of any pair of reads in the same cluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]"
    max_umi_dist: "Maximum hamming distance between the UMIs of any pair of reads in the same cluster. [default: 1]"
    std_dev: "Standard deviation of expected insert size. Defines search space of the most likely overlap. (Required for calculating overlapping consensus only)"
    umi_len: "Length of UMI in read. [default: 8]"
    flags: ""
    fq_one: ""
    fq_two: ""
    consensus_fq_one: ""
    consensus_fq_two: ""
    consensus_fq_three: ""
  }
}