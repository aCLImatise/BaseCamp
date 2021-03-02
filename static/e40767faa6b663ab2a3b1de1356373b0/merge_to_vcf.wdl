version 1.0

task Mergetovcf {
  input {
    Boolean? arg_maximum_allowed_distance_splitread
    Boolean? arg_maximum_allowed_read
    Boolean? arg_maximum_allowed_distance_read
    Boolean? arg_maximum_allowed_differencebetween
    Boolean? arg_minimum_length
    Int? i_size_stddev
    Boolean? _perform_genotyping
    Boolean? perform_trioaware_genotyping
    Boolean? arg_calls_triomode
    Boolean? read_split_read
    Boolean? arg_mapq_alignments
    Boolean? arg_prior_believe
    Boolean? genotyping_based_alignments
    Boolean? genotyping_only_based
    String written_dot
    String segments_dot
  }
  command <<<
    merge_to_vcf \
      ~{written_dot} \
      ~{segments_dot} \
      ~{if (arg_maximum_allowed_distance_splitread) then "-o" else ""} \
      ~{if (arg_maximum_allowed_read) then "-z" else ""} \
      ~{if (arg_maximum_allowed_distance_read) then "-O" else ""} \
      ~{if (arg_maximum_allowed_differencebetween) then "-Z" else ""} \
      ~{if (arg_minimum_length) then "-l" else ""} \
      ~{if defined(i_size_stddev) then ("--isize_stddev " +  '"' + i_size_stddev + '"') else ""} \
      ~{if (_perform_genotyping) then "-G" else ""} \
      ~{if (perform_trioaware_genotyping) then "-T" else ""} \
      ~{if (arg_calls_triomode) then "-d" else ""} \
      ~{if (read_split_read) then "-b" else ""} \
      ~{if (arg_mapq_alignments) then "-m" else ""} \
      ~{if (arg_prior_believe) then "-p" else ""} \
      ~{if (genotyping_based_alignments) then "-I" else ""} \
      ~{if (genotyping_only_based) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_maximum_allowed_distance_splitread: "[ --max_offset ] arg (=100)        Maximum allowed distance between split\\nread and CLEVER call."
    arg_maximum_allowed_read: "[ --max_length_diff ] arg (=20)    Maximum allowed length difference\\nbetween split read and CLEVER call."
    arg_maximum_allowed_distance_read: "[ --max_offset_split ] arg (=20)   Maximum allowed distance between two\\nsplit read calls."
    arg_maximum_allowed_differencebetween: "[ --max_length_diff_split ] arg (=5)\\nMaximum allowed length difference\\nbetween two split read calls."
    arg_minimum_length: "[ --min_length ] arg (=10)         Minimum length of variations to be"
    i_size_stddev: "(=-1)              Standard deviation of internal"
    _perform_genotyping: "[ --genotype ]                     Perform genotyping."
    perform_trioaware_genotyping: "[ --trio_aware ]                   Perform trio-aware genotyping."
    arg_calls_triomode: "[ --denovo_threshold ] arg (=1.0000000000000001e-05)\\nThreshold for de novo calls (in trio\\nmode)"
    read_split_read: "[ --split_reads_from_bam ]         Read split read evidence from BAM file."
    arg_mapq_alignments: "[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower\\nMAPQ are ignored."
    arg_prior_believe: "[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that\\nthe locus is under investigation)."
    genotyping_based_alignments: "[ --gt_only_insert ]               Do genotyping only based on\\ninternal-segment-type alignments."
    genotyping_only_based: "[ --gt_only_split ]                Do genotyping only based on split-type\\nalignments.\\n"
    written_dot: "--isize_mean arg (=-1)                Mean length of internal segments. If "
    segments_dot: "-w [ --bam_window ] arg (=1000)       Number of nucleotides to look to the "
  }
  output {
    File out_stdout = stdout()
  }
}