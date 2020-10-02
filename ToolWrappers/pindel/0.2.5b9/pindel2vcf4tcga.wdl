version 1.0

task Pindel2vcf4tcga {
  input {
    Float? is
    String? li
    Boolean? r_slash_reference
    Boolean? c_slash_center
    Boolean? r_slash_reference_name
    Boolean? d_slash_reference_date
    File? p_slash_pin_del_output
    File? p_slash_pin_del_output_root
    File? v_slash_vcf
    Boolean? c_slash_chromosome
    Boolean? w_slash_window_size
    Boolean? mc_slash_min_coverage
    Boolean? he_slash_het_cut_off
    Boolean? ho_slash_hom_cut_off
    Boolean? is_slash_min_size
    Boolean? as_slash_max_size
    Boolean? b_slash_both_strands_supported
    Boolean? m_slash_min_supporting_samples
    Boolean? e_slash_min_supporting_reads
    Boolean? f_slash_max_supporting_reads
    Boolean? sr_slash_region_start
    Boolean? er_slash_region_end
    Boolean? ir_slash_max_internal_repeats
    Boolean? co_slash_compact_output_limit
    Boolean? il_slash_max_internal_repeat_length
    Boolean? pr_slash_max_post_in_del_repeats
    Boolean? pl_slash_max_post_in_del_repeat_length
    Boolean? sb_slash_only_balanced_samples
    Boolean? so_slash_somatic_p
    Boolean? ss_slash_minimum_strand_support
    Boolean? g_slash_g_atk_compatible
    Boolean? h_slash_help
    File? r
    File? p
    Int pin_del_two_vcf
  }
  command <<<
    pindel2vcf4tcga \
      ~{pin_del_two_vcf} \
      ~{if defined(is) then ("-is " +  '"' + is + '"') else ""} \
      ~{if defined(li) then ("-LI " +  '"' + li + '"') else ""} \
      ~{if (r_slash_reference) then "-r/--reference" else ""} \
      ~{if (c_slash_center) then "-C/--center" else ""} \
      ~{if (r_slash_reference_name) then "-R/--reference_name" else ""} \
      ~{if (d_slash_reference_date) then "-d/--reference_date" else ""} \
      ~{if (p_slash_pin_del_output) then "-p/--pindel_output" else ""} \
      ~{if (p_slash_pin_del_output_root) then "-P/--pindel_output_root" else ""} \
      ~{if (v_slash_vcf) then "-v/--vcf" else ""} \
      ~{if (c_slash_chromosome) then "-c/--chromosome" else ""} \
      ~{if (w_slash_window_size) then "-w/--window_size" else ""} \
      ~{if (mc_slash_min_coverage) then "-mc/--min_coverage" else ""} \
      ~{if (he_slash_het_cut_off) then "-he/--het_cutoff" else ""} \
      ~{if (ho_slash_hom_cut_off) then "-ho/--hom_cutoff" else ""} \
      ~{if (is_slash_min_size) then "-is/--min_size" else ""} \
      ~{if (as_slash_max_size) then "-as/--max_size" else ""} \
      ~{if (b_slash_both_strands_supported) then "-b/--both_strands_supported" else ""} \
      ~{if (m_slash_min_supporting_samples) then "-m/--min_supporting_samples" else ""} \
      ~{if (e_slash_min_supporting_reads) then "-e/--min_supporting_reads" else ""} \
      ~{if (f_slash_max_supporting_reads) then "-f/--max_supporting_reads" else ""} \
      ~{if (sr_slash_region_start) then "-sr/--region_start" else ""} \
      ~{if (er_slash_region_end) then "-er/--region_end" else ""} \
      ~{if (ir_slash_max_internal_repeats) then "-ir/--max_internal_repeats" else ""} \
      ~{if (co_slash_compact_output_limit) then "-co/--compact_output_limit" else ""} \
      ~{if (il_slash_max_internal_repeat_length) then "-il/--max_internal_repeatlength" else ""} \
      ~{if (pr_slash_max_post_in_del_repeats) then "-pr/--max_postindel_repeats" else ""} \
      ~{if (pl_slash_max_post_in_del_repeat_length) then "-pl/--max_postindel_repeatlength" else ""} \
      ~{if (sb_slash_only_balanced_samples) then "-sb/--only_balanced_samples" else ""} \
      ~{if (so_slash_somatic_p) then "-so/--somatic_p" else ""} \
      ~{if (ss_slash_minimum_strand_support) then "-ss/--minimum_strand_support" else ""} \
      ~{if (g_slash_g_atk_compatible) then "-G/--gatk_compatible" else ""} \
      ~{if (h_slash_help) then "-h/--help" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  parameter_meta {
    is: "guaranteed to work correctly on output files produced by pindel version 0.2.3 and above."
    li: "BP files (long insertion and break point files) have a different type of header and\\nare not supported yet."
    r_slash_reference: "The name of the file containing the reference genome: required parameter"
    c_slash_center: "The name of the center producing this file"
    r_slash_reference_name: "The name and version of the reference genome: required parameter"
    d_slash_reference_date: "The date of the version of the reference genome used: required parameter"
    p_slash_pin_del_output: "The name of the pindel output file containing the SVs"
    p_slash_pin_del_output_root: "The root-name of the pindel output file; this will result in"
    v_slash_vcf: "The name of the output vcf-file (default: name of pindel output file +\\\".vcf\\\""
    c_slash_chromosome: "The name of the chromosome (default: SVs on all chromosomes are processed)"
    w_slash_window_size: "Memory saving option: the size of the genomic region in a chromosome of which structural variants are calculated separately, in millions of bases (default 300, for memory saving 100 or 50 recommended)"
    mc_slash_min_coverage: "The minimum number of reads to provide a genotype (default 10)"
    he_slash_het_cut_off: "The propertion of reads to call het (default 0.2)"
    ho_slash_hom_cut_off: "The propertion of reads to call het (default 0.8)"
    is_slash_min_size: "The minimum size of events to be reported (default 1)"
    as_slash_max_size: "The maximum size of events to be reported (default infinite)"
    b_slash_both_strands_supported: "Only report events that are detected on both strands (default false)"
    m_slash_min_supporting_samples: "The minimum number of samples an event needs to occur in with sufficient support to be reported (default 0)"
    e_slash_min_supporting_reads: "The minimum number of supporting reads required for an event to be reported (default 1)"
    f_slash_max_supporting_reads: "The maximum number of supporting reads allowed for an event to be reported, allows protection against miscalls in due to segmental duplications or poorly mapped regions (default infinite)"
    sr_slash_region_start: "The start of the region of which events are to be reported (default 0)"
    er_slash_region_end: "The end of the region of which events are to be reported (default infinite)"
    ir_slash_max_internal_repeats: "Filters out all indels where the inserted/deleted sequence is a homopolymer/microsatellite of more than X repetitions (default infinite). For example: T->TCACACA has CACACA as insertion, which is a microsattelite of 3 repeats; this would be filtered out by setting -ir to 2"
    co_slash_compact_output_limit: "Puts all structural variations of which either the ref allele or the alt allele exceeds the specified size (say 10 in '-co 10') in the format 'chrom pos first_base <SVType>'"
    il_slash_max_internal_repeat_length: "Filters out all indels where the inserted/deleted sequence is a homopolymers/microsatellite with an unit size of more than Y, combine with the option -ir. Default value of -il is infinite. For example: T->TCAGCAG has CAGCAG as insertion, which has the fundamental repetitive unit CAG of length 3. This would be filtered out if -il has been set to 3 or above, but would be deemed 'sufficiently unrepetitive' if -il is 2"
    pr_slash_max_post_in_del_repeats: "Filters out all indels where the inserted/deleted sequence is followed by a repetition (of over X times) of the fundamental repeat unit of the inserted/deleted sequence. For example, T->TCACA would usually be a normal insertion, which is not filtered out, but if the real sequence change is TCACACA->TCACACACACA, it will be filtered out by -pr of 1 or above, as the fundamental repeat unit of the inserted sequence (CA) is repeated more than one time in the postindel sequence [indel sequence CACA, postindel sequence CACACA]. Note: when CAC is inserted next to ACACAC, the repeat sequence is recognized as CA, even though the 'postrepeat' sequence is ACACAC"
    pl_slash_max_post_in_del_repeat_length: "Filters out all indels where the inserted/deleted sequence is followed by a repetition of  the fundamental repeat unit of the inserted/deleted sequence; the maximum size of that 'fundamental unit' given by the value of -pl (default infinite) For example: TCAG->TCAGCAG has insertion CAG and post-insertion sequence CAG. This insertion would be filtered out if -pl has been set to 3 or above, but would be deemed 'sufficiently unrepetitive' if -pl is 2"
    sb_slash_only_balanced_samples: "Only count a sample as supporting an event if it is supported by reads on both strands, minimum reads per strand given by the -ss parameter. (default false)"
    so_slash_somatic_p: "compute somatic p value when two samples are present, assume the order is normal and tumor. (default false)"
    ss_slash_minimum_strand_support: "Only count a sample as supporting an event if at least one of its strands is supported by X reads (default 1)"
    g_slash_g_atk_compatible: "calls genotypes which could either be homozygous or heterozygous not as ./1 but as 0/1, to ensure compatibility with GATK"
    h_slash_help: "Print the help of this converter"
    r: ""
    p: ""
    pin_del_two_vcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_p_slash_pin_del_output = "${in_p_slash_pin_del_output}"
    File out_p_slash_pin_del_output_root = "${in_p_slash_pin_del_output_root}"
    File out_v_slash_vcf = "${in_v_slash_vcf}"
    File out_p = "${in_p}"
  }
}