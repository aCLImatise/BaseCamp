class: CommandLineTool
id: pindel2vcf4tcga.cwl
inputs:
- id: in_is
  doc: guaranteed to work correctly on output files produced by pindel version 0.2.3
    and above.
  type: double
  inputBinding:
    prefix: -is
- id: in_li
  doc: "BP files (long insertion and break point files) have a different type of header\
    \ and\nare not supported yet."
  type: string
  inputBinding:
    prefix: -LI
- id: in_r_slash_reference
  doc: 'The name of the file containing the reference genome: required parameter'
  type: boolean
  inputBinding:
    prefix: -r/--reference
- id: in_c_slash_center
  doc: The name of the center producing this file
  type: boolean
  inputBinding:
    prefix: -C/--center
- id: in_r_slash_reference_name
  doc: 'The name and version of the reference genome: required parameter'
  type: boolean
  inputBinding:
    prefix: -R/--reference_name
- id: in_d_slash_reference_date
  doc: 'The date of the version of the reference genome used: required parameter'
  type: boolean
  inputBinding:
    prefix: -d/--reference_date
- id: in_p_slash_pin_del_output
  doc: The name of the pindel output file containing the SVs
  type: File
  inputBinding:
    prefix: -p/--pindel_output
- id: in_p_slash_pin_del_output_root
  doc: The root-name of the pindel output file; this will result in
  type: File
  inputBinding:
    prefix: -P/--pindel_output_root
- id: in_v_slash_vcf
  doc: 'The name of the output vcf-file (default: name of pindel output file +".vcf"'
  type: File
  inputBinding:
    prefix: -v/--vcf
- id: in_c_slash_chromosome
  doc: 'The name of the chromosome (default: SVs on all chromosomes are processed)'
  type: boolean
  inputBinding:
    prefix: -c/--chromosome
- id: in_w_slash_window_size
  doc: 'Memory saving option: the size of the genomic region in a chromosome of which
    structural variants are calculated separately, in millions of bases (default 300,
    for memory saving 100 or 50 recommended)'
  type: boolean
  inputBinding:
    prefix: -w/--window_size
- id: in_mc_slash_min_coverage
  doc: The minimum number of reads to provide a genotype (default 10)
  type: boolean
  inputBinding:
    prefix: -mc/--min_coverage
- id: in_he_slash_het_cut_off
  doc: The propertion of reads to call het (default 0.2)
  type: boolean
  inputBinding:
    prefix: -he/--het_cutoff
- id: in_ho_slash_hom_cut_off
  doc: The propertion of reads to call het (default 0.8)
  type: boolean
  inputBinding:
    prefix: -ho/--hom_cutoff
- id: in_is_slash_min_size
  doc: The minimum size of events to be reported (default 1)
  type: boolean
  inputBinding:
    prefix: -is/--min_size
- id: in_as_slash_max_size
  doc: The maximum size of events to be reported (default infinite)
  type: boolean
  inputBinding:
    prefix: -as/--max_size
- id: in_b_slash_both_strands_supported
  doc: Only report events that are detected on both strands (default false)
  type: boolean
  inputBinding:
    prefix: -b/--both_strands_supported
- id: in_m_slash_min_supporting_samples
  doc: The minimum number of samples an event needs to occur in with sufficient support
    to be reported (default 0)
  type: boolean
  inputBinding:
    prefix: -m/--min_supporting_samples
- id: in_e_slash_min_supporting_reads
  doc: The minimum number of supporting reads required for an event to be reported
    (default 1)
  type: boolean
  inputBinding:
    prefix: -e/--min_supporting_reads
- id: in_f_slash_max_supporting_reads
  doc: The maximum number of supporting reads allowed for an event to be reported,
    allows protection against miscalls in due to segmental duplications or poorly
    mapped regions (default infinite)
  type: boolean
  inputBinding:
    prefix: -f/--max_supporting_reads
- id: in_sr_slash_region_start
  doc: The start of the region of which events are to be reported (default 0)
  type: boolean
  inputBinding:
    prefix: -sr/--region_start
- id: in_er_slash_region_end
  doc: The end of the region of which events are to be reported (default infinite)
  type: boolean
  inputBinding:
    prefix: -er/--region_end
- id: in_ir_slash_max_internal_repeats
  doc: 'Filters out all indels where the inserted/deleted sequence is a homopolymer/microsatellite
    of more than X repetitions (default infinite). For example: T->TCACACA has CACACA
    as insertion, which is a microsattelite of 3 repeats; this would be filtered out
    by setting -ir to 2'
  type: boolean
  inputBinding:
    prefix: -ir/--max_internal_repeats
- id: in_co_slash_compact_output_limit
  doc: Puts all structural variations of which either the ref allele or the alt allele
    exceeds the specified size (say 10 in '-co 10') in the format 'chrom pos first_base
    <SVType>'
  type: boolean
  inputBinding:
    prefix: -co/--compact_output_limit
- id: in_il_slash_max_internal_repeat_length
  doc: "Filters out all indels where the inserted/deleted sequence is a homopolymers/microsatellite\
    \ with an unit size of more than Y, combine with the option -ir. Default value\
    \ of -il is infinite. For example: T->TCAGCAG has CAGCAG as insertion, which has\
    \ the fundamental repetitive unit CAG of length 3. This would be filtered out\
    \ if -il has been set to 3 or above, but would be deemed 'sufficiently unrepetitive'\
    \ if -il is 2"
  type: boolean
  inputBinding:
    prefix: -il/--max_internal_repeatlength
- id: in_pr_slash_max_post_in_del_repeats
  doc: "Filters out all indels where the inserted/deleted sequence is followed by\
    \ a repetition (of over X times) of the fundamental repeat unit of the inserted/deleted\
    \ sequence. For example, T->TCACA would usually be a normal insertion, which is\
    \ not filtered out, but if the real sequence change is TCACACA->TCACACACACA, it\
    \ will be filtered out by -pr of 1 or above, as the fundamental repeat unit of\
    \ the inserted sequence (CA) is repeated more than one time in the postindel sequence\
    \ [indel sequence CACA, postindel sequence CACACA]. Note: when CAC is inserted\
    \ next to ACACAC, the repeat sequence is recognized as CA, even though the 'postrepeat'\
    \ sequence is ACACAC"
  type: boolean
  inputBinding:
    prefix: -pr/--max_postindel_repeats
- id: in_pl_slash_max_post_in_del_repeat_length
  doc: "Filters out all indels where the inserted/deleted sequence is followed by\
    \ a repetition of  the fundamental repeat unit of the inserted/deleted sequence;\
    \ the maximum size of that 'fundamental unit' given by the value of -pl (default\
    \ infinite) For example: TCAG->TCAGCAG has insertion CAG and post-insertion sequence\
    \ CAG. This insertion would be filtered out if -pl has been set to 3 or above,\
    \ but would be deemed 'sufficiently unrepetitive' if -pl is 2"
  type: boolean
  inputBinding:
    prefix: -pl/--max_postindel_repeatlength
- id: in_sb_slash_only_balanced_samples
  doc: Only count a sample as supporting an event if it is supported by reads on both
    strands, minimum reads per strand given by the -ss parameter. (default false)
  type: boolean
  inputBinding:
    prefix: -sb/--only_balanced_samples
- id: in_so_slash_somatic_p
  doc: compute somatic p value when two samples are present, assume the order is normal
    and tumor. (default false)
  type: boolean
  inputBinding:
    prefix: -so/--somatic_p
- id: in_ss_slash_minimum_strand_support
  doc: Only count a sample as supporting an event if at least one of its strands is
    supported by X reads (default 1)
  type: boolean
  inputBinding:
    prefix: -ss/--minimum_strand_support
- id: in_g_slash_g_atk_compatible
  doc: calls genotypes which could either be homozygous or heterozygous not as ./1
    but as 0/1, to ensure compatibility with GATK
  type: boolean
  inputBinding:
    prefix: -G/--gatk_compatible
- id: in_h_slash_help
  doc: Print the help of this converter
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_r
  doc: ''
  type: File
  inputBinding:
    prefix: -r
- id: in_p
  doc: ''
  type: File
  inputBinding:
    prefix: -p
- id: in_pin_del_two_vcf
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_p_slash_pin_del_output
  doc: The name of the pindel output file containing the SVs
  type: File
  outputBinding:
    glob: $(inputs.in_p_slash_pin_del_output)
- id: out_p_slash_pin_del_output_root
  doc: The root-name of the pindel output file; this will result in
  type: File
  outputBinding:
    glob: $(inputs.in_p_slash_pin_del_output_root)
- id: out_v_slash_vcf
  doc: 'The name of the output vcf-file (default: name of pindel output file +".vcf"'
  type: File
  outputBinding:
    glob: $(inputs.in_v_slash_vcf)
- id: out_p
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_p)
cwlVersion: v1.1
baseCommand:
- pindel2vcf4tcga
