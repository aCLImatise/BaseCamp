version 1.0

task RadHaplotyper.pl {
  input {
    String? input_vcf_file
    Boolean? bed_file_containing
    Boolean? optionally_specify_sample
    Boolean? _reference_genome
    Boolean? remove_loci_more
    Boolean? cutoff_proportion_included
    Boolean? mp
    Boolean? ml
    Boolean? sampling_depth_used
    Boolean? controls_rescue_logic
    Boolean? handling_complex_loci
    Boolean? genepop_file_population
    Boolean? vcf_file_output
    Boolean? population_map_organizing
    Boolean? tsv_file_linkage
    Boolean? ima_file_output
    Boolean? p_one
    Boolean? p_two
    Boolean? number_threads_use
    Boolean? use_indels
    Boolean? debug
    Boolean? vcf_file
    Boolean? reference
    Boolean? bed_file
    Boolean? genomic_ref
    Boolean? samples
    Boolean? cut_off
    Boolean? threads
    Boolean? keep_single_indels
    Boolean? complex
    Boolean? depth
    Boolean? hap_rescue
    Boolean? miss_cut_off
    Boolean? max_paralog_inds
    Boolean? max_low_cov_inds
    Boolean? gene_pop
    Boolean? vcf_out
    Boolean? ima
    Boolean? pop_map
    Boolean? tsv_file
    Boolean? parent_one
    Boolean? parent_two
    Boolean? debug
  }
  command <<<
    rad_haplotyper.pl \
      ~{if defined(input_vcf_file) then ("-v " +  '"' + input_vcf_file + '"') else ""} \
      ~{true="-b" false="" bed_file_containing} \
      ~{true="-s" false="" optionally_specify_sample} \
      ~{true="-r" false="" _reference_genome} \
      ~{true="-u" false="" remove_loci_more} \
      ~{true="-m" false="" cutoff_proportion_included} \
      ~{true="-mp" false="" mp} \
      ~{true="-ml" false="" ml} \
      ~{true="-d" false="" sampling_depth_used} \
      ~{true="-z" false="" controls_rescue_logic} \
      ~{true="-c" false="" handling_complex_loci} \
      ~{true="-g" false="" genepop_file_population} \
      ~{true="-o" false="" vcf_file_output} \
      ~{true="-p" false="" population_map_organizing} \
      ~{true="-t" false="" tsv_file_linkage} \
      ~{true="-a" false="" ima_file_output} \
      ~{true="-p1" false="" p_one} \
      ~{true="-p2" false="" p_two} \
      ~{true="-x" false="" number_threads_use} \
      ~{true="-n" false="" use_indels} \
      ~{true="-e" false="" debug} \
      ~{true="--vcffile" false="" vcf_file} \
      ~{true="--reference" false="" reference} \
      ~{true="--bedfile" false="" bed_file} \
      ~{true="--genomic_ref" false="" genomic_ref} \
      ~{true="--samples" false="" samples} \
      ~{true="--cutoff" false="" cut_off} \
      ~{true="--threads" false="" threads} \
      ~{true="--keep_single_indels" false="" keep_single_indels} \
      ~{true="--complex" false="" complex} \
      ~{true="--depth" false="" depth} \
      ~{true="--hap_rescue" false="" hap_rescue} \
      ~{true="--miss_cutoff" false="" miss_cut_off} \
      ~{true="--max_paralog_inds" false="" max_paralog_inds} \
      ~{true="--max_low_cov_inds" false="" max_low_cov_inds} \
      ~{true="--genepop" false="" gene_pop} \
      ~{true="--vcfout" false="" vcf_out} \
      ~{true="--ima" false="" ima} \
      ~{true="--popmap" false="" pop_map} \
      ~{true="--tsvfile" false="" tsv_file} \
      ~{true="--parent1" false="" parent_one} \
      ~{true="--parent2" false="" parent_two} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_vcf_file: "input vcf file"
    bed_file_containing: "[bedfile]               BED file containing regions to be haplotyped"
    optionally_specify_sample: "[samples]               optionally specify an individual sample to be haplotyped"
    _reference_genome: "[reference]             reference genome"
    remove_loci_more: "[snp_cutoff]            remove loci with more than a specified number of SNPs"
    cutoff_proportion_included: "[miss_cutoff]           cutoff for proportion of missing data for loci to be included in the output"
    mp: "[max_paralog_inds]              cutoff for excluding possible paralogs"
    ml: "[max_low_cov_inds]              cutoff for excluding loci with low coverage or genotyping errors"
    sampling_depth_used: "[depth]                 sampling depth used by the algorithm to build haplotypes"
    controls_rescue_logic: "[hap_rescue]                 controls haplotype rescue logic"
    handling_complex_loci: "[complex]               handling of complex loci"
    genepop_file_population: "[genepop]               genepop file for population output"
    vcf_file_output: "[vcfout]                vcf file output"
    population_map_organizing: "[popmap]                population map for organizing Genepop file"
    tsv_file_linkage: "[tsvfile]               tsv file for linkage map output"
    ima_file_output: "[imafile]               IMa file output"
    p_one: "[parent1]               first parent in the mapping cross"
    p_two: "[parent2]               second parent in the mapping cross"
    number_threads_use: "[threads]               number of threads to use for the analysis"
    use_indels: "use indels"
    debug: "Output extra logs for debugging purposes"
    vcf_file: "VCF input file"
    reference: "Reference genome (FASTA format) - required if IMa output is required"
    bed_file: "BED file that specifies the intervals of the reference genome that should be haplotyped. This is required if the reference genome does not contain discrete RAD loci as separate contigs"
    genomic_ref: "Run the program with a reference genome that does not contain discrete RAD loci"
    samples: "Individual samples to use in the analysis - can be used multiple times for multiple individuals [Default: All]"
    cut_off: "Excludes loci with more than the specified number of SNPs [Default: No filter]"
    threads: "Run in parallel across individuals with a specified number of threads"
    keep_single_indels: "Includes indels that are the only polymorphism at the locus (contig)"
    complex: "Specify how to treat complex polymorphisms in the VCF file (indels, muliallelic SNPs, or complex polymorphims). The two supported options are 'skip', which ignores them, keeping other sites at that contig for haplotyping, or 'remove', which removes entire contigs that contain complex polymorphisms [Default: skip]"
    depth: "Specify a depth of sampling reads for building haplotypes [Default: 20]"
    hap_rescue: "Specify a rescue parameter that controls the behavior of the script when dealing with loci that have more observed haplotypes than are possible given the genotypes. A value less than one will indicate remove observed haplotypes from consideration if they are observed less than the specified proportion of the total number of reads. A value of one or greater indicates that a haplotype should be removed from consideration if the haplotype is observed in fewer reads than the number specified. Example: If the parameter is set to 3, the script will eliminate haplotypes observed in less than 3 reads before determining whether there is an approriate number of haplotypes observed; if the parameter is set to 0.05, the script will eliminate haplotypes obseerved from less than 5 percent of the total number of reads at that locus in that individual before determining whether the correct number of haplotypes is present. [Default: 0.05]."
    miss_cut_off: "Proportion of missing data cutoff for removing loci from the final output. For example, to keep only loci with successful haplotype builds in 95% of individuals, enter 0.95. [Default: 0.9]"
    max_paralog_inds: "Count cutoff for removing loci that are possible paralogs from the final output. The value is the maximum allowable number of individuals with more than the expected number of haplotypes [Default: No filter]"
    max_low_cov_inds: "Count cutoff for removing loci with low coverage or genotyping errors from the final output. The value is the maximum allowable number of individuals with less than the expected number of haplotypes [Default: No filter]"
    gene_pop: "Writes a genepop file using haplotypes. Must provide the name of the genepop file."
    vcf_out: "Writes a VCF file that contains SNPs (unhaplotyped) and genotypes that were successfully built into haplotypes. Must provide the name of the VCF file."
    ima: "Writes a IMa file using haplotypes. Must provide the name of the IMa file."
    pop_map: "Tab-separated file of individuals and their population designation, one per line (required for Genepop output)"
    tsv_file: "Writes a tsv file using haplotypes - for mapping crosses only. Must provide the name of the tsv file."
    parent_one: "Parent 1 of the mapping cross (must be specified if writing a tsv file)"
    parent_two: "Parent 2 of the mapping cross (must be specified if writing a tsv file)"
  }
}