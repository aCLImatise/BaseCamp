version 1.0

task MergeToVcf {
  input {
    Boolean? arg_maximum_allowed_distance
    Boolean? arg_maximum_allowed_length_difference_split
    Boolean? arg_maximum_allowed_read
    Boolean? arg_maximum_allowed_length_difference_two
    Boolean? arg_minimum_length
    String? i_size_mean
    String? i_size_stddev
    Boolean? arg_number_look
    Boolean? _perform_genotyping
    Boolean? perform_trioaware_genotyping
    Boolean? arg__threshold
    Boolean? read_split_read
    Boolean? arg_minimum_mapq
    Boolean? arg_prior_believe
    Boolean? genotyping_only_based_internalsegmenttype
    Boolean? genotyping_only_based_splittype
    String dataset_list_file
  }
  command <<<
    merge-to-vcf \
      ~{dataset_list_file} \
      ~{true="-o" false="" arg_maximum_allowed_distance} \
      ~{true="-z" false="" arg_maximum_allowed_length_difference_split} \
      ~{true="-O" false="" arg_maximum_allowed_read} \
      ~{true="-Z" false="" arg_maximum_allowed_length_difference_two} \
      ~{true="-l" false="" arg_minimum_length} \
      ~{if defined(i_size_mean) then ("--isize_mean " +  '"' + i_size_mean + '"') else ""} \
      ~{if defined(i_size_stddev) then ("--isize_stddev " +  '"' + i_size_stddev + '"') else ""} \
      ~{true="-w" false="" arg_number_look} \
      ~{true="-G" false="" _perform_genotyping} \
      ~{true="-T" false="" perform_trioaware_genotyping} \
      ~{true="-d" false="" arg__threshold} \
      ~{true="-b" false="" read_split_read} \
      ~{true="-m" false="" arg_minimum_mapq} \
      ~{true="-p" false="" arg_prior_believe} \
      ~{true="-I" false="" genotyping_only_based_internalsegmenttype} \
      ~{true="-S" false="" genotyping_only_based_splittype}
  >>>
  parameter_meta {
    arg_maximum_allowed_distance: "[ --max_offset ] arg (=100)        Maximum allowed distance between split  read and CLEVER call."
    arg_maximum_allowed_length_difference_split: "[ --max_length_diff ] arg (=20)    Maximum allowed length difference  between split read and CLEVER call."
    arg_maximum_allowed_read: "[ --max_offset_split ] arg (=20)   Maximum allowed distance between two  split read calls."
    arg_maximum_allowed_length_difference_two: "[ --max_length_diff_split ] arg (=5) Maximum allowed length difference  between two split read calls."
    arg_minimum_length: "[ --min_length ] arg (=10)         Minimum length of variations to be  written."
    i_size_mean: "(=-1)                Mean length of internal segments. If  given and BAM files are present, number of supporting internal segment size  reads is determined."
    i_size_stddev: "(=-1)              Standard deviation of internal  segments."
    arg_number_look: "[ --bam_window ] arg (=1000)       Number of nucleotides to look to the  right/to the left of deletions in BAM  files to find relevant alignments."
    _perform_genotyping: "[ --genotype ]                     Perform genotyping."
    perform_trioaware_genotyping: "[ --trio_aware ]                   Perform trio-aware genotyping."
    arg__threshold: "[ --denovo_threshold ] arg (=1.0000000000000001e-05) Threshold for de novo calls (in trio  mode)"
    read_split_read: "[ --split_reads_from_bam ]         Read split read evidence from BAM file."
    arg_minimum_mapq: "[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower  MAPQ are ignored."
    arg_prior_believe: "[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that  the locus is under investigation)."
    genotyping_only_based_internalsegmenttype: "[ --gt_only_insert ]               Do genotyping only based on  internal-segment-type alignments."
    genotyping_only_based_splittype: "[ --gt_only_split ]                Do genotyping only based on split-type  alignments."
    dataset_list_file: ""
  }
}