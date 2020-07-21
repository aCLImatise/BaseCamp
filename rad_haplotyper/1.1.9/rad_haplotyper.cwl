class: CommandLineTool
id: ../../../rad_haplotyper.pl.cwl
inputs:
- id: input_vcf_file
  doc: input vcf file
  type: string
  inputBinding:
    prefix: -v
- id: bed_file_containing
  doc: '[bedfile]               BED file containing regions to be haplotyped'
  type: boolean
  inputBinding:
    prefix: -b
- id: optionally_specify_sample
  doc: '[samples]               optionally specify an individual sample to be haplotyped'
  type: boolean
  inputBinding:
    prefix: -s
- id: _reference_genome
  doc: '[reference]             reference genome'
  type: boolean
  inputBinding:
    prefix: -r
- id: remove_loci_more
  doc: '[snp_cutoff]            remove loci with more than a specified number of SNPs'
  type: boolean
  inputBinding:
    prefix: -u
- id: cutoff_proportion_included
  doc: '[miss_cutoff]           cutoff for proportion of missing data for loci to
    be included in the output'
  type: boolean
  inputBinding:
    prefix: -m
- id: mp
  doc: '[max_paralog_inds]              cutoff for excluding possible paralogs'
  type: boolean
  inputBinding:
    prefix: -mp
- id: ml
  doc: '[max_low_cov_inds]              cutoff for excluding loci with low coverage
    or genotyping errors'
  type: boolean
  inputBinding:
    prefix: -ml
- id: sampling_depth_used
  doc: '[depth]                 sampling depth used by the algorithm to build haplotypes'
  type: boolean
  inputBinding:
    prefix: -d
- id: controls_rescue_logic
  doc: '[hap_rescue]                 controls haplotype rescue logic'
  type: boolean
  inputBinding:
    prefix: -z
- id: handling_complex_loci
  doc: '[complex]               handling of complex loci'
  type: boolean
  inputBinding:
    prefix: -c
- id: genepop_file_population
  doc: '[genepop]               genepop file for population output'
  type: boolean
  inputBinding:
    prefix: -g
- id: vcf_file_output
  doc: '[vcfout]                vcf file output'
  type: boolean
  inputBinding:
    prefix: -o
- id: population_map_organizing
  doc: '[popmap]                population map for organizing Genepop file'
  type: boolean
  inputBinding:
    prefix: -p
- id: tsv_file_linkage
  doc: '[tsvfile]               tsv file for linkage map output'
  type: boolean
  inputBinding:
    prefix: -t
- id: ima_file_output
  doc: '[imafile]               IMa file output'
  type: boolean
  inputBinding:
    prefix: -a
- id: p_one
  doc: '[parent1]               first parent in the mapping cross'
  type: boolean
  inputBinding:
    prefix: -p1
- id: p_two
  doc: '[parent2]               second parent in the mapping cross'
  type: boolean
  inputBinding:
    prefix: -p2
- id: number_threads_use
  doc: '[threads]               number of threads to use for the analysis'
  type: boolean
  inputBinding:
    prefix: -x
- id: use_indels
  doc: use indels
  type: boolean
  inputBinding:
    prefix: -n
- id: debug
  doc: debug
  type: boolean
  inputBinding:
    prefix: -e
- id: vcf_file
  doc: VCF input file
  type: boolean
  inputBinding:
    prefix: --vcffile
- id: reference
  doc: Reference genome (FASTA format) - required if IMa output is required
  type: boolean
  inputBinding:
    prefix: --reference
- id: bed_file
  doc: BED file that specifies the intervals of the reference genome that should be
    haplotyped. This is required if the reference genome does not contain discrete
    RAD loci as separate contigs
  type: boolean
  inputBinding:
    prefix: --bedfile
- id: genomic_ref
  doc: Run the program with a reference genome that does not contain discrete RAD
    loci
  type: boolean
  inputBinding:
    prefix: --genomic_ref
- id: samples
  doc: 'Individual samples to use in the analysis - can be used multiple times for
    multiple individuals [Default: All]'
  type: boolean
  inputBinding:
    prefix: --samples
- id: cut_off
  doc: 'Excludes loci with more than the specified number of SNPs [Default: No filter]'
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: threads
  doc: Run in parallel across individuals with a specified number of threads
  type: boolean
  inputBinding:
    prefix: --threads
- id: keep_single_indels
  doc: Includes indels that are the only polymorphism at the locus (contig)
  type: boolean
  inputBinding:
    prefix: --keep_single_indels
- id: complex
  doc: "Specify how to treat complex polymorphisms in the VCF file (indels, muliallelic\
    \ SNPs, or complex polymorphims). The two supported options are 'skip', which\
    \ ignores them, keeping other sites at that contig for haplotyping, or 'remove',\
    \ which removes entire contigs that contain complex polymorphisms [Default: skip]"
  type: boolean
  inputBinding:
    prefix: --complex
- id: depth
  doc: 'Specify a depth of sampling reads for building haplotypes [Default: 20]'
  type: boolean
  inputBinding:
    prefix: --depth
- id: hap_rescue
  doc: 'Specify a rescue parameter that controls the behavior of the script when dealing
    with loci that have more observed haplotypes than are possible given the genotypes.
    A value less than one will indicate remove observed haplotypes from consideration
    if they are observed less than the specified proportion of the total number of
    reads. A value of one or greater indicates that a haplotype should be removed
    from consideration if the haplotype is observed in fewer reads than the number
    specified. Example: If the parameter is set to 3, the script will eliminate haplotypes
    observed in less than 3 reads before determining whether there is an approriate
    number of haplotypes observed; if the parameter is set to 0.05, the script will
    eliminate haplotypes obseerved from less than 5 percent of the total number of
    reads at that locus in that individual before determining whether the correct
    number of haplotypes is present. [Default: 0.05].'
  type: boolean
  inputBinding:
    prefix: --hap_rescue
- id: miss_cut_off
  doc: 'Proportion of missing data cutoff for removing loci from the final output.
    For example, to keep only loci with successful haplotype builds in 95% of individuals,
    enter 0.95. [Default: 0.9]'
  type: boolean
  inputBinding:
    prefix: --miss_cutoff
- id: max_paralog_inds
  doc: 'Count cutoff for removing loci that are possible paralogs from the final output.
    The value is the maximum allowable number of individuals with more than the expected
    number of haplotypes [Default: No filter]'
  type: boolean
  inputBinding:
    prefix: --max_paralog_inds
- id: max_low_cov_inds
  doc: 'Count cutoff for removing loci with low coverage or genotyping errors from
    the final output. The value is the maximum allowable number of individuals with
    less than the expected number of haplotypes [Default: No filter]'
  type: boolean
  inputBinding:
    prefix: --max_low_cov_inds
- id: gene_pop
  doc: Writes a genepop file using haplotypes. Must provide the name of the genepop
    file.
  type: boolean
  inputBinding:
    prefix: --genepop
- id: vcf_out
  doc: Writes a VCF file that contains SNPs (unhaplotyped) and genotypes that were
    successfully built into haplotypes. Must provide the name of the VCF file.
  type: boolean
  inputBinding:
    prefix: --vcfout
- id: ima
  doc: Writes a IMa file using haplotypes. Must provide the name of the IMa file.
  type: boolean
  inputBinding:
    prefix: --ima
- id: pop_map
  doc: Tab-separated file of individuals and their population designation, one per
    line (required for Genepop output)
  type: boolean
  inputBinding:
    prefix: --popmap
- id: tsv_file
  doc: Writes a tsv file using haplotypes - for mapping crosses only. Must provide
    the name of the tsv file.
  type: boolean
  inputBinding:
    prefix: --tsvfile
- id: parent_one
  doc: Parent 1 of the mapping cross (must be specified if writing a tsv file)
  type: boolean
  inputBinding:
    prefix: --parent1
- id: parent_two
  doc: Parent 2 of the mapping cross (must be specified if writing a tsv file)
  type: boolean
  inputBinding:
    prefix: --parent2
- id: debug
  doc: Output extra logs for debugging purposes
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- rad_haplotyper.pl
