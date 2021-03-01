version 1.0

task RadHaplotyperpl {
  input {
    File? input_vcf_file
    Boolean? bed_file_containing
    Boolean? optionally_specify_sample
    Boolean? _reference_genome
    Boolean? remove_loci_more
    Boolean? cutoff_proportion_included
    Boolean? mp
    Boolean? ml
    Boolean? sampling_depth_used
    Boolean? controls_haplotype_logic
    Boolean? handling_complex_loci
    File? genepop_file_population
    File? vcf_file_output
    Boolean? population_map_organizing
    File? tsv_file_linkage
    File? ima_file_output
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
    File? pop_map
    Boolean? tsv_file
    Boolean? parent_one
    Boolean? parent_two
    Boolean? debug
  }
  command <<<
    rad_haplotyper_pl \
      ~{if defined(input_vcf_file) then ("-v " +  '"' + input_vcf_file + '"') else ""} \
      ~{if (bed_file_containing) then "-b" else ""} \
      ~{if (optionally_specify_sample) then "-s" else ""} \
      ~{if (_reference_genome) then "-r" else ""} \
      ~{if (remove_loci_more) then "-u" else ""} \
      ~{if (cutoff_proportion_included) then "-m" else ""} \
      ~{if (mp) then "-mp" else ""} \
      ~{if (ml) then "-ml" else ""} \
      ~{if (sampling_depth_used) then "-d" else ""} \
      ~{if (controls_haplotype_logic) then "-z" else ""} \
      ~{if (handling_complex_loci) then "-c" else ""} \
      ~{if (genepop_file_population) then "-g" else ""} \
      ~{if (vcf_file_output) then "-o" else ""} \
      ~{if (population_map_organizing) then "-p" else ""} \
      ~{if (tsv_file_linkage) then "-t" else ""} \
      ~{if (ima_file_output) then "-a" else ""} \
      ~{if (p_one) then "-p1" else ""} \
      ~{if (p_two) then "-p2" else ""} \
      ~{if (number_threads_use) then "-x" else ""} \
      ~{if (use_indels) then "-n" else ""} \
      ~{if (debug) then "-e" else ""} \
      ~{if (vcf_file) then "--vcffile" else ""} \
      ~{if (reference) then "--reference" else ""} \
      ~{if (bed_file) then "--bedfile" else ""} \
      ~{if (genomic_ref) then "--genomic_ref" else ""} \
      ~{if (samples) then "--samples" else ""} \
      ~{if (cut_off) then "--cutoff" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (keep_single_indels) then "--keep_single_indels" else ""} \
      ~{if (complex) then "--complex" else ""} \
      ~{if (depth) then "--depth" else ""} \
      ~{if (hap_rescue) then "--hap_rescue" else ""} \
      ~{if (miss_cut_off) then "--miss_cutoff" else ""} \
      ~{if (max_paralog_inds) then "--max_paralog_inds" else ""} \
      ~{if (max_low_cov_inds) then "--max_low_cov_inds" else ""} \
      ~{if (gene_pop) then "--genepop" else ""} \
      ~{if (vcf_out) then "--vcfout" else ""} \
      ~{if (ima) then "--ima" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (tsv_file) then "--tsvfile" else ""} \
      ~{if (parent_one) then "--parent1" else ""} \
      ~{if (parent_two) then "--parent2" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    controls_haplotype_logic: "[hap_rescue]                 controls haplotype rescue logic"
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
    debug: "Output extra logs for debugging purposes\\n"
    vcf_file: "VCF input file"
    reference: "Reference genome (FASTA format) - required if IMa output is\\nrequired"
    bed_file: "BED file that specifies the intervals of the reference genome\\nthat should be haplotyped. This is required if the reference\\ngenome does not contain discrete RAD loci as separate contigs"
    genomic_ref: "Run the program with a reference genome that does not contain\\ndiscrete RAD loci"
    samples: "Individual samples to use in the analysis - can be used multiple\\ntimes for multiple individuals [Default: All]"
    cut_off: "Excludes loci with more than the specified number of SNPs\\n[Default: No filter]"
    threads: "Run in parallel across individuals with a specified number of\\nthreads"
    keep_single_indels: "Includes indels that are the only polymorphism at the locus\\n(contig)"
    complex: "Specify how to treat complex polymorphisms in the VCF file\\n(indels, muliallelic SNPs, or complex polymorphims). The two\\nsupported options are 'skip', which ignores them, keeping other\\nsites at that contig for haplotyping, or 'remove', which removes\\nentire contigs that contain complex polymorphisms [Default:\\nskip]"
    depth: "Specify a depth of sampling reads for building haplotypes\\n[Default: 20]"
    hap_rescue: "Specify a rescue parameter that controls the behavior of the\\nscript when dealing with loci that have more observed haplotypes\\nthan are possible given the genotypes. A value less than one\\nwill indicate remove observed haplotypes from consideration if\\nthey are observed less than the specified proportion of the\\ntotal number of reads. A value of one or greater indicates that\\na haplotype should be removed from consideration if the\\nhaplotype is observed in fewer reads than the number specified.\\nExample: If the parameter is set to 3, the script will eliminate\\nhaplotypes observed in less than 3 reads before determining\\nwhether there is an approriate number of haplotypes observed; if\\nthe parameter is set to 0.05, the script will eliminate\\nhaplotypes obseerved from less than 5 percent of the total\\nnumber of reads at that locus in that individual before\\ndetermining whether the correct number of haplotypes is present.\\n[Default: 0.05]."
    miss_cut_off: "Proportion of missing data cutoff for removing loci from the\\nfinal output. For example, to keep only loci with successful\\nhaplotype builds in 95% of individuals, enter 0.95. [Default:\\n0.9]"
    max_paralog_inds: "Count cutoff for removing loci that are possible paralogs from\\nthe final output. The value is the maximum allowable number of\\nindividuals with more than the expected number of haplotypes\\n[Default: No filter]"
    max_low_cov_inds: "Count cutoff for removing loci with low coverage or genotyping\\nerrors from the final output. The value is the maximum allowable\\nnumber of individuals with less than the expected number of\\nhaplotypes [Default: No filter]"
    gene_pop: "Writes a genepop file using haplotypes. Must provide the name of\\nthe genepop file."
    vcf_out: "Writes a VCF file that contains SNPs (unhaplotyped) and\\ngenotypes that were successfully built into haplotypes. Must\\nprovide the name of the VCF file."
    ima: "Writes a IMa file using haplotypes. Must provide the name of the\\nIMa file."
    pop_map: "Tab-separated file of individuals and their population\\ndesignation, one per line (required for Genepop output)"
    tsv_file: "Writes a tsv file using haplotypes - for mapping crosses only.\\nMust provide the name of the tsv file."
    parent_one: "Parent 1 of the mapping cross (must be specified if writing a\\ntsv file)"
    parent_two: "Parent 2 of the mapping cross (must be specified if writing a\\ntsv file)"
  }
  output {
    File out_stdout = stdout()
    File out_genepop_file_population = "${in_genepop_file_population}"
    File out_vcf_file_output = "${in_vcf_file_output}"
    File out_tsv_file_linkage = "${in_tsv_file_linkage}"
    File out_ima_file_output = "${in_ima_file_output}"
    File out_pop_map = "${in_pop_map}"
  }
}