version 1.0

task Pindel2vcf4tcga {
  input {
    Float? is
    String? li
    Boolean? reference
    Boolean? center
    Boolean? reference_name
    Boolean? reference_date
    File? pin_del_output
    File? pin_del_output_root
    File? vcf
    Boolean? chromosome
    Boolean? window_size
    Boolean? min_coverage
    Boolean? het_cut_off
    Boolean? hom_cut_off
    Boolean? min_size
    Boolean? max_size
    Boolean? both_strands_supported
    Boolean? min_supporting_samples
    Boolean? min_supporting_reads
    Boolean? max_supporting_reads
    Boolean? region_start
    Boolean? region_end
    Boolean? max_internal_repeats
    Boolean? compact_output_limit
    Boolean? max_internal_repeat_length
    Boolean? max_post_in_del_repeats
    Boolean? max_post_in_del_repeat_length
    Boolean? only_balanced_samples
    Boolean? somatic_p
    Boolean? minimum_strand_support
    Boolean? g_atk_compatible
    Int pin_del_two_vcf
  }
  command <<<
    pindel2vcf4tcga \
      ~{pin_del_two_vcf} \
      ~{if defined(is) then ("-is " +  '"' + is + '"') else ""} \
      ~{if defined(li) then ("-LI " +  '"' + li + '"') else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (center) then "--center" else ""} \
      ~{if (reference_name) then "--reference_name" else ""} \
      ~{if (reference_date) then "--reference_date" else ""} \
      ~{if (pin_del_output) then "--pindel_output" else ""} \
      ~{if (pin_del_output_root) then "--pindel_output_root" else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (chromosome) then "--chromosome" else ""} \
      ~{if (window_size) then "--window_size" else ""} \
      ~{if (min_coverage) then "--min_coverage" else ""} \
      ~{if (het_cut_off) then "--het_cutoff" else ""} \
      ~{if (hom_cut_off) then "--hom_cutoff" else ""} \
      ~{if (min_size) then "--min_size" else ""} \
      ~{if (max_size) then "--max_size" else ""} \
      ~{if (both_strands_supported) then "--both_strands_supported" else ""} \
      ~{if (min_supporting_samples) then "--min_supporting_samples" else ""} \
      ~{if (min_supporting_reads) then "--min_supporting_reads" else ""} \
      ~{if (max_supporting_reads) then "--max_supporting_reads" else ""} \
      ~{if (region_start) then "--region_start" else ""} \
      ~{if (region_end) then "--region_end" else ""} \
      ~{if (max_internal_repeats) then "--max_internal_repeats" else ""} \
      ~{if (compact_output_limit) then "--compact_output_limit" else ""} \
      ~{if (max_internal_repeat_length) then "--max_internal_repeatlength" else ""} \
      ~{if (max_post_in_del_repeats) then "--max_postindel_repeats" else ""} \
      ~{if (max_post_in_del_repeat_length) then "--max_postindel_repeatlength" else ""} \
      ~{if (only_balanced_samples) then "--only_balanced_samples" else ""} \
      ~{if (somatic_p) then "--somatic_p" else ""} \
      ~{if (minimum_strand_support) then "--minimum_strand_support" else ""} \
      ~{if (g_atk_compatible) then "--gatk_compatible" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    is: "guaranteed to work correctly on output files produced by pindel version 0.2.3 and above."
    li: "BP files (long insertion and break point files) have a different type of header and\\nare not supported yet."
    reference: "The name of the file containing the reference genome: required parameter"
    center: "The name of the center producing this file"
    reference_name: "The name and version of the reference genome: required parameter"
    reference_date: "The date of the version of the reference genome used: required parameter"
    pin_del_output: "The name of the pindel output file containing the SVs"
    pin_del_output_root: "The root-name of the pindel output file; this will result in"
    vcf: "The name of the output vcf-file (default: name of pindel output file +\\\".vcf\\\""
    chromosome: "The name of the chromosome (default: SVs on all chromosomes are processed)"
    window_size: "Memory saving option: the size of the genomic region in a chromosome of which structural variants are calculated separately, in millions of bases (default 300, for memory saving 100 or 50 recommended)"
    min_coverage: "The minimum number of reads to provide a genotype (default 10)"
    het_cut_off: "The propertion of reads to call het (default 0.2)"
    hom_cut_off: "The propertion of reads to call het (default 0.8)"
    min_size: "The minimum size of events to be reported (default 1)"
    max_size: "The maximum size of events to be reported (default infinite)"
    both_strands_supported: "Only report events that are detected on both strands (default false)"
    min_supporting_samples: "The minimum number of samples an event needs to occur in with sufficient support to be reported (default 0)"
    min_supporting_reads: "The minimum number of supporting reads required for an event to be reported (default 1)"
    max_supporting_reads: "The maximum number of supporting reads allowed for an event to be reported, allows protection against miscalls in due to segmental duplications or poorly mapped regions (default infinite)"
    region_start: "The start of the region of which events are to be reported (default 0)"
    region_end: "The end of the region of which events are to be reported (default infinite)"
    max_internal_repeats: "Filters out all indels where the inserted/deleted sequence is a homopolymer/microsatellite of more than X repetitions (default infinite). For example: T->TCACACA has CACACA as insertion, which is a microsattelite of 3 repeats; this would be filtered out by setting -ir to 2"
    compact_output_limit: "Puts all structural variations of which either the ref allele or the alt allele exceeds the specified size (say 10 in '-co 10') in the format 'chrom pos first_base <SVType>'"
    max_internal_repeat_length: "Filters out all indels where the inserted/deleted sequence is a homopolymers/microsatellite with an unit size of more than Y, combine with the option -ir. Default value of -il is infinite. For example: T->TCAGCAG has CAGCAG as insertion, which has the fundamental repetitive unit CAG of length 3. This would be filtered out if -il has been set to 3 or above, but would be deemed 'sufficiently unrepetitive' if -il is 2"
    max_post_in_del_repeats: "Filters out all indels where the inserted/deleted sequence is followed by a repetition (of over X times) of the fundamental repeat unit of the inserted/deleted sequence. For example, T->TCACA would usually be a normal insertion, which is not filtered out, but if the real sequence change is TCACACA->TCACACACACA, it will be filtered out by -pr of 1 or above, as the fundamental repeat unit of the inserted sequence (CA) is repeated more than one time in the postindel sequence [indel sequence CACA, postindel sequence CACACA]. Note: when CAC is inserted next to ACACAC, the repeat sequence is recognized as CA, even though the 'postrepeat' sequence is ACACAC"
    max_post_in_del_repeat_length: "Filters out all indels where the inserted/deleted sequence is followed by a repetition of  the fundamental repeat unit of the inserted/deleted sequence; the maximum size of that 'fundamental unit' given by the value of -pl (default infinite) For example: TCAG->TCAGCAG has insertion CAG and post-insertion sequence CAG. This insertion would be filtered out if -pl has been set to 3 or above, but would be deemed 'sufficiently unrepetitive' if -pl is 2"
    only_balanced_samples: "Only count a sample as supporting an event if it is supported by reads on both strands, minimum reads per strand given by the -ss parameter. (default false)"
    somatic_p: "compute somatic p value when two samples are present, assume the order is normal and tumor. (default false)"
    minimum_strand_support: "Only count a sample as supporting an event if at least one of its strands is supported by X reads (default 1)"
    g_atk_compatible: "calls genotypes which could either be homozygous or heterozygous not as ./1 but as 0/1, to ensure compatibility with GATK"
    pin_del_two_vcf: ""
  }
  output {
    File out_stdout = stdout()
    File out_pin_del_output = "${in_pin_del_output}"
    File out_pin_del_output_root = "${in_pin_del_output_root}"
    File out_vcf = "${in_vcf}"
  }
}