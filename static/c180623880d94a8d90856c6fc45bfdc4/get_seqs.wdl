version 1.0

task GetSeqs {
  input {
    Boolean? bool_only_remove
    Boolean? bool_split_contigs
    Boolean? str_prefix_output
    Boolean? bool_keep_contigs
    Boolean? bool_add_prefix
    Boolean? int_maximum_gap
    Boolean? int_minimum_primary
    Boolean? int_minimum_ratio
    String? options
    String dups_dot_bed
    String fast_a
  }
  command <<<
    get_seqs \
      ~{options} \
      ~{dups_dot_bed} \
      ~{fast_a} \
      ~{if (bool_only_remove) then "-e" else ""} \
      ~{if (bool_split_contigs) then "-s" else ""} \
      ~{if (str_prefix_output) then "-p" else ""} \
      ~{if (bool_keep_contigs) then "-c" else ""} \
      ~{if (bool_add_prefix) then "-a" else ""} \
      ~{if (int_maximum_gap) then "-g" else ""} \
      ~{if (int_minimum_primary) then "-l" else ""} \
      ~{if (int_minimum_ratio) then "-m" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/purge_dups:1.2.5--hed695b0_0"
  }
  parameter_meta {
    bool_only_remove: "BOOL     only remove sequences at the ends of a contig [FALSE]"
    bool_split_contigs: "BOOL     split contigs [FALSE]"
    str_prefix_output: "STR      prefix of output files [NULL]"
    bool_keep_contigs: "BOOL     keep high coverage contigs in the primary contig set [FALSE]"
    bool_add_prefix: "BOOL     do not add prefix to haplotigs [FALSE]"
    int_maximum_gap: "INT      maximum gap size between duplications [10k]"
    int_minimum_primary: "INT      minimum primary contig length [10k]"
    int_minimum_ratio: "INT      minimum ratio of remaining primary contig length to the original contig length [0.05]"
    options: ""
    dups_dot_bed: ""
    fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}