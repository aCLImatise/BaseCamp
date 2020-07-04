version 1.0

task Genotyper {
  input {
    Boolean? arg_maximum_allowed_read
    Boolean? arg_maximum_allowed_difference
    Boolean? arg_minimum_distance
    Boolean? arg_number_look
    Boolean? arg__threshold
    Boolean? arg_minimum_mapq
    Boolean? arg_prior_believe
    Boolean? genotyping_only_based_internalsegmenttype
    Boolean? genotyping_only_based_splittype
    String? min_gq
    String? min_phys_cov
    String? gq_present
    Boolean? omit_absent
    Boolean? dont_prioritize
    String? max_output_length
    String dataset_list_file
    String read_group_file
  }
  command <<<
    genotyper \
      ~{dataset_list_file} \
      ~{read_group_file} \
      ~{true="-O" false="" arg_maximum_allowed_read} \
      ~{true="-Z" false="" arg_maximum_allowed_difference} \
      ~{true="-b" false="" arg_minimum_distance} \
      ~{true="-w" false="" arg_number_look} \
      ~{true="-d" false="" arg__threshold} \
      ~{true="-m" false="" arg_minimum_mapq} \
      ~{true="-p" false="" arg_prior_believe} \
      ~{true="-I" false="" genotyping_only_based_internalsegmenttype} \
      ~{true="-S" false="" genotyping_only_based_splittype} \
      ~{if defined(min_gq) then ("--min_gq " +  '"' + min_gq + '"') else ""} \
      ~{if defined(min_phys_cov) then ("--min_phys_cov " +  '"' + min_phys_cov + '"') else ""} \
      ~{if defined(gq_present) then ("--gq-present " +  '"' + gq_present + '"') else ""} \
      ~{true="--omit-absent" false="" omit_absent} \
      ~{true="--dont-prioritize" false="" dont_prioritize} \
      ~{if defined(max_output_length) then ("--max-output-length " +  '"' + max_output_length + '"') else ""}
  >>>
  parameter_meta {
    arg_maximum_allowed_read: "[ --max_offset_split ] arg (=10)   Maximum allowed distance between two  split read calls."
    arg_maximum_allowed_difference: "[ --max_length_diff_split ] arg (=5) Maximum allowed length difference  between two split read calls."
    arg_minimum_distance: "[ --split_border_distance ] arg (=12) Minimum distance of variant breakpoint  to start/end of alignment in order to  use read."
    arg_number_look: "[ --bam_window ] arg (=1000)       Number of nucleotides to look to the  right/to the left of deletions in BAM  files to find relevant alignments."
    arg__threshold: "[ --denovo_threshold ] arg (=1.0000000000000001e-05) Threshold for de novo calls (in  trio/quartet mode)"
    arg_minimum_mapq: "[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower  MAPQ are ignored."
    arg_prior_believe: "[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that  the locus is under investigation)."
    genotyping_only_based_internalsegmenttype: "[ --gt_only_insert ]               Do genotyping only based on  internal-segment-type alignments."
    genotyping_only_based_splittype: "[ --gt_only_split ]                Do genotyping only based on split-type  alignments."
    min_gq: "(=20)                    Minimum genotype quality (GQ). If GQ is below threshold, then it is not  reported and \"./.\" is output instead.  However, if distinction absent vs.  present is possible, then \"1/.\" is  reported, see option --gq-present."
    min_phys_cov: "(=5)               Minimum physical coverage to determine  genotype if less, then \"./.\" is output  for this deletion/individual  (default=5)."
    gq_present: "(=20)                In case genotype cannot be called (due  to bad GQ or due to insufficient  physical coverage), then report  genotype \"1/.\" (i.e. \"present\") if  phred score of genotype \"0/0\" is above  this threshold."
    omit_absent: "Omit lines where variant is absent in  all samples."
    dont_prioritize: "By default indels with most split read  support genotyped first, giving them  precedence over indels with less  support. This option disables this and  genotypes indels as they appear in the  input."
    max_output_length: "(=9999)       Maximum length of deletion for which  the REF allele is output to the VCF.  Above that, the <DEL> notation is used  (defaul: 9999)."
    dataset_list_file: ""
    read_group_file: ""
  }
}