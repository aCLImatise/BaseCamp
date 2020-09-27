class: CommandLineTool
id: rad_haplotyper.pl.cwl
inputs:
- id: in_input_vcf_file
  doc: input vcf file
  type: File
  inputBinding:
    prefix: -v
- id: in_bed_file_containing
  doc: '[bedfile]               BED file containing regions to be haplotyped'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_optionally_specify_haplotyped
  doc: '[samples]               optionally specify an individual sample to be haplotyped'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__reference_genome
  doc: '[reference]             reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_remove_loci_more
  doc: '[snp_cutoff]            remove loci with more than a specified number of SNPs'
  type: boolean
  inputBinding:
    prefix: -u
- id: in_cutoff_proportion_included
  doc: '[miss_cutoff]           cutoff for proportion of missing data for loci to
    be included in the output'
  type: boolean
  inputBinding:
    prefix: -m
- id: in_mp
  doc: '[max_paralog_inds]              cutoff for excluding possible paralogs'
  type: boolean
  inputBinding:
    prefix: -mp
- id: in_ml
  doc: '[max_low_cov_inds]              cutoff for excluding loci with low coverage
    or genotyping errors'
  type: boolean
  inputBinding:
    prefix: -ml
- id: in_sampling_depth_used
  doc: '[depth]                 sampling depth used by the algorithm to build haplotypes'
  type: boolean
  inputBinding:
    prefix: -d
- id: in_controls_haplotype_logic
  doc: '[hap_rescue]                 controls haplotype rescue logic'
  type: boolean
  inputBinding:
    prefix: -z
- id: in_handling_complex_loci
  doc: '[complex]               handling of complex loci'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_genepop_file_population
  doc: '[genepop]               genepop file for population output'
  type: File
  inputBinding:
    prefix: -g
- id: in_vcf_file_output
  doc: '[vcfout]                vcf file output'
  type: File
  inputBinding:
    prefix: -o
- id: in_population_map_organizing
  doc: '[popmap]                population map for organizing Genepop file'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_tsv_file_linkage
  doc: '[tsvfile]               tsv file for linkage map output'
  type: File
  inputBinding:
    prefix: -t
- id: in_ima_file_output
  doc: '[imafile]               IMa file output'
  type: File
  inputBinding:
    prefix: -a
- id: in_p_one
  doc: '[parent1]               first parent in the mapping cross'
  type: boolean
  inputBinding:
    prefix: -p1
- id: in_p_two
  doc: '[parent2]               second parent in the mapping cross'
  type: boolean
  inputBinding:
    prefix: -p2
- id: in_number_threads_use
  doc: '[threads]               number of threads to use for the analysis'
  type: boolean
  inputBinding:
    prefix: -x
- id: in_use_indels
  doc: use indels
  type: boolean
  inputBinding:
    prefix: -n
- id: in_debug
  doc: debug
  type: boolean
  inputBinding:
    prefix: -e
- id: in_vcf_file
  doc: VCF input file
  type: boolean
  inputBinding:
    prefix: --vcffile
- id: in_reference
  doc: "Reference genome (FASTA format) - required if IMa output is\nrequired"
  type: boolean
  inputBinding:
    prefix: --reference
- id: in_bed_file
  doc: "BED file that specifies the intervals of the reference genome\nthat should\
    \ be haplotyped. This is required if the reference\ngenome does not contain discrete\
    \ RAD loci as separate contigs"
  type: boolean
  inputBinding:
    prefix: --bedfile
- id: in_genomic_ref
  doc: "Run the program with a reference genome that does not contain\ndiscrete RAD\
    \ loci"
  type: boolean
  inputBinding:
    prefix: --genomic_ref
- id: in_samples
  doc: "Individual samples to use in the analysis - can be used multiple\ntimes for\
    \ multiple individuals [Default: All]"
  type: boolean
  inputBinding:
    prefix: --samples
- id: in_cut_off
  doc: "Excludes loci with more than the specified number of SNPs\n[Default: No filter]"
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: in_threads
  doc: "Run in parallel across individuals with a specified number of\nthreads"
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_keep_single_indels
  doc: "Includes indels that are the only polymorphism at the locus\n(contig)"
  type: boolean
  inputBinding:
    prefix: --keep_single_indels
- id: in_complex
  doc: "Specify how to treat complex polymorphisms in the VCF file\n(indels, muliallelic\
    \ SNPs, or complex polymorphims). The two\nsupported options are 'skip', which\
    \ ignores them, keeping other\nsites at that contig for haplotyping, or 'remove',\
    \ which removes\nentire contigs that contain complex polymorphisms [Default:\n\
    skip]"
  type: boolean
  inputBinding:
    prefix: --complex
- id: in_depth
  doc: "Specify a depth of sampling reads for building haplotypes\n[Default: 20]"
  type: boolean
  inputBinding:
    prefix: --depth
- id: in_hap_rescue
  doc: "Specify a rescue parameter that controls the behavior of the\nscript when\
    \ dealing with loci that have more observed haplotypes\nthan are possible given\
    \ the genotypes. A value less than one\nwill indicate remove observed haplotypes\
    \ from consideration if\nthey are observed less than the specified proportion\
    \ of the\ntotal number of reads. A value of one or greater indicates that\na haplotype\
    \ should be removed from consideration if the\nhaplotype is observed in fewer\
    \ reads than the number specified.\nExample: If the parameter is set to 3, the\
    \ script will eliminate\nhaplotypes observed in less than 3 reads before determining\n\
    whether there is an approriate number of haplotypes observed; if\nthe parameter\
    \ is set to 0.05, the script will eliminate\nhaplotypes obseerved from less than\
    \ 5 percent of the total\nnumber of reads at that locus in that individual before\n\
    determining whether the correct number of haplotypes is present.\n[Default: 0.05]."
  type: boolean
  inputBinding:
    prefix: --hap_rescue
- id: in_miss_cut_off
  doc: "Proportion of missing data cutoff for removing loci from the\nfinal output.\
    \ For example, to keep only loci with successful\nhaplotype builds in 95% of individuals,\
    \ enter 0.95. [Default:\n0.9]"
  type: boolean
  inputBinding:
    prefix: --miss_cutoff
- id: in_max_paralog_inds
  doc: "Count cutoff for removing loci that are possible paralogs from\nthe final\
    \ output. The value is the maximum allowable number of\nindividuals with more\
    \ than the expected number of haplotypes\n[Default: No filter]"
  type: boolean
  inputBinding:
    prefix: --max_paralog_inds
- id: in_max_low_cov_inds
  doc: "Count cutoff for removing loci with low coverage or genotyping\nerrors from\
    \ the final output. The value is the maximum allowable\nnumber of individuals\
    \ with less than the expected number of\nhaplotypes [Default: No filter]"
  type: boolean
  inputBinding:
    prefix: --max_low_cov_inds
- id: in_gene_pop
  doc: "Writes a genepop file using haplotypes. Must provide the name of\nthe genepop\
    \ file."
  type: boolean
  inputBinding:
    prefix: --genepop
- id: in_vcf_out
  doc: "Writes a VCF file that contains SNPs (unhaplotyped) and\ngenotypes that were\
    \ successfully built into haplotypes. Must\nprovide the name of the VCF file."
  type: boolean
  inputBinding:
    prefix: --vcfout
- id: in_ima
  doc: "Writes a IMa file using haplotypes. Must provide the name of the\nIMa file."
  type: boolean
  inputBinding:
    prefix: --ima
- id: in_pop_map
  doc: "Tab-separated file of individuals and their population\ndesignation, one per\
    \ line (required for Genepop output)"
  type: File
  inputBinding:
    prefix: --popmap
- id: in_tsv_file
  doc: "Writes a tsv file using haplotypes - for mapping crosses only.\nMust provide\
    \ the name of the tsv file."
  type: boolean
  inputBinding:
    prefix: --tsvfile
- id: in_parent_one
  doc: "Parent 1 of the mapping cross (must be specified if writing a\ntsv file)"
  type: boolean
  inputBinding:
    prefix: --parent1
- id: in_parent_two
  doc: "Parent 2 of the mapping cross (must be specified if writing a\ntsv file)"
  type: boolean
  inputBinding:
    prefix: --parent2
- id: in_debug
  doc: "Output extra logs for debugging purposes\n"
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_genepop_file_population
  doc: '[genepop]               genepop file for population output'
  type: File
  outputBinding:
    glob: $(inputs.in_genepop_file_population)
- id: out_vcf_file_output
  doc: '[vcfout]                vcf file output'
  type: File
  outputBinding:
    glob: $(inputs.in_vcf_file_output)
- id: out_tsv_file_linkage
  doc: '[tsvfile]               tsv file for linkage map output'
  type: File
  outputBinding:
    glob: $(inputs.in_tsv_file_linkage)
- id: out_ima_file_output
  doc: '[imafile]               IMa file output'
  type: File
  outputBinding:
    glob: $(inputs.in_ima_file_output)
- id: out_pop_map
  doc: "Tab-separated file of individuals and their population\ndesignation, one per\
    \ line (required for Genepop output)"
  type: File
  outputBinding:
    glob: $(inputs.in_pop_map)
cwlVersion: v1.1
baseCommand:
- rad_haplotyper.pl
