version 1.0

task Genotyper {
  input {
    Boolean? arg_maximum_allowed_distance
    Boolean? arg_maximum_allowed_differencebetween
    Boolean? arg_minimum_distance
    Boolean? arg_number_look
    Boolean? arg_calls_mode
    Boolean? arg_mapq_alignments
    Boolean? arg_prior_believe
    Boolean? genotyping_based_alignments
    Boolean? genotyping_only_based
    Int? min_phys_cov
    Int? gq_present
    Boolean? omit_absent
    Boolean? dont_prioritize
    Int? max_output_length
    String alignments_dot
  }
  command <<<
    genotyper \
      ~{alignments_dot} \
      ~{if (arg_maximum_allowed_distance) then "-O" else ""} \
      ~{if (arg_maximum_allowed_differencebetween) then "-Z" else ""} \
      ~{if (arg_minimum_distance) then "-b" else ""} \
      ~{if (arg_number_look) then "-w" else ""} \
      ~{if (arg_calls_mode) then "-d" else ""} \
      ~{if (arg_mapq_alignments) then "-m" else ""} \
      ~{if (arg_prior_believe) then "-p" else ""} \
      ~{if (genotyping_based_alignments) then "-I" else ""} \
      ~{if (genotyping_only_based) then "-S" else ""} \
      ~{if defined(min_phys_cov) then ("--min_phys_cov " +  '"' + min_phys_cov + '"') else ""} \
      ~{if defined(gq_present) then ("--gq-present " +  '"' + gq_present + '"') else ""} \
      ~{if (omit_absent) then "--omit-absent" else ""} \
      ~{if (dont_prioritize) then "--dont-prioritize" else ""} \
      ~{if defined(max_output_length) then ("--max-output-length " +  '"' + max_output_length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_maximum_allowed_distance: "[ --max_offset_split ] arg (=10)   Maximum allowed distance between two\\nsplit read calls."
    arg_maximum_allowed_differencebetween: "[ --max_length_diff_split ] arg (=5)\\nMaximum allowed length difference\\nbetween two split read calls."
    arg_minimum_distance: "[ --split_border_distance ] arg (=12)\\nMinimum distance of variant breakpoint\\nto start/end of alignment in order to\\nuse read."
    arg_number_look: "[ --bam_window ] arg (=1000)       Number of nucleotides to look to the\\nright/to the left of deletions in BAM\\nfiles to find relevant alignments."
    arg_calls_mode: "[ --denovo_threshold ] arg (=1.0000000000000001e-05)\\nThreshold for de novo calls (in\\ntrio/quartet mode)"
    arg_mapq_alignments: "[ --mapq ] arg (=0)                Minimum MAPQ. Alignments with lower\\nMAPQ are ignored."
    arg_prior_believe: "[ --variant_prior ] arg (=0.5)     Prior believe in a variant (given that\\nthe locus is under investigation)."
    genotyping_based_alignments: "[ --gt_only_insert ]               Do genotyping only based on\\ninternal-segment-type alignments."
    genotyping_only_based: "[ --gt_only_split ]                Do genotyping only based on split-type"
    min_phys_cov: "(=5)               Minimum physical coverage to determine\\ngenotype if less, then \\\"./.\\\" is output\\nfor this deletion/individual\\n(default=5)."
    gq_present: "(=20)                In case genotype cannot be called (due\\nto bad GQ or due to insufficient\\nphysical coverage), then report\\ngenotype \\\"1/.\\\" (i.e. \\\"present\\\") if\\nphred score of genotype \\\"0/0\\\" is above\\nthis threshold."
    omit_absent: "Omit lines where variant is absent in\\nall samples."
    dont_prioritize: "By default indels with most split read\\nsupport genotyped first, giving them\\nprecedence over indels with less\\nsupport. This option disables this and\\ngenotypes indels as they appear in the\\ninput."
    max_output_length: "(=9999)       Maximum length of deletion for which\\nthe REF allele is output to the VCF.\\nAbove that, the <DEL> notation is used\\n(defaul: 9999).\\n"
    alignments_dot: "--min_gq arg (=20)                    Minimum genotype quality (GQ). If GQ is"
  }
  output {
    File out_stdout = stdout()
  }
}