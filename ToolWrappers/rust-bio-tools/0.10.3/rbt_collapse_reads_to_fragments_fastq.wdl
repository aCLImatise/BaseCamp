version 1.0

task RbtCollapsereadstofragmentsFastq {
  input {
    Int? _length_umi
    Int? max_hamming_distance_umis
    Int? max_hamming_distance_sequences
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
      ~{if defined(_length_umi) then ("-l " +  '"' + _length_umi + '"') else ""} \
      ~{if defined(max_hamming_distance_umis) then ("-d " +  '"' + max_hamming_distance_umis + '"') else ""} \
      ~{if defined(max_hamming_distance_sequences) then ("-D " +  '"' + max_hamming_distance_sequences + '"') else ""} \
      ~{if (umi_on_reverse) then "--umi-on-reverse" else ""} \
      ~{if (verbose_read_names) then "--verbose-read-names" else ""} \
      ~{if defined(insert_size) then ("--insert-size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(max_seq_dist) then ("--max-seq-dist " +  '"' + max_seq_dist + '"') else ""} \
      ~{if defined(max_umi_dist) then ("--max-umi-dist " +  '"' + max_umi_dist + '"') else ""} \
      ~{if defined(std_dev) then ("--std-dev " +  '"' + std_dev + '"') else ""} \
      ~{if defined(umi_len) then ("--umi-len " +  '"' + umi_len + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _length_umi: "\\                    # length of UMI"
    max_hamming_distance_umis: "\\                     # max hamming distance of UMIs within a cluster"
    max_hamming_distance_sequences: "\\                     # max hamming distance of sequences within a cluster"
    umi_on_reverse: "Set if UMI is on reverse read"
    verbose_read_names: "Add list of reads that were merged for each consensus read. Note that this can yield\\nvery long FASTQ name lines which cannot be handled by some tools."
    insert_size: "Expected insert size of sequenced fragment (Required for calculating\\noverlapping consensus only)"
    max_seq_dist: "Maximum hamming distance between the sequences of any pair of reads in the same\\ncluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]"
    max_umi_dist: "Maximum hamming distance between the UMIs of any pair of reads in the same\\ncluster. [default: 1]"
    std_dev: "Standard deviation of expected insert size. Defines search space of the most\\nlikely overlap. (Required for calculating overlapping consensus only)"
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