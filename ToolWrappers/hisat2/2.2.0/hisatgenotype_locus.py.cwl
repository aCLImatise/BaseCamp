class: CommandLineTool
id: hisatgenotype_locus.py.cwl
inputs:
- id: in_base_fname
  doc: "base filename for backbone sequence, variants, and\nlinking info (default:\
    \ hla)"
  type: File?
  inputBinding:
    prefix: --base-fname
- id: in_locus_list
  doc: "A comma-separated list of genes (default: empty, all\ngenes)"
  type: string?
  inputBinding:
    prefix: --locus-list
- id: in_genotype_genome
  doc: "Base name for genotype genome, which the program will\nuse instead of region-based\
    \ small indexes (default:\nempty)"
  type: string?
  inputBinding:
    prefix: --genotype-genome
- id: in_fast_a
  doc: FASTA format
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_filename_singleend_reads
  doc: filename for single-end reads
  type: File?
  inputBinding:
    prefix: -U
- id: in_one
  doc: filename for paired-end reads
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: filename for paired-end reads
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_alignment
  doc: BAM file name
  type: File?
  inputBinding:
    prefix: --alignment
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_partial
  doc: Include partial alleles (e.g. A_nuc.fasta)
  type: boolean?
  inputBinding:
    prefix: --no-partial
- id: in_aligner_list
  doc: "A comma-separated list of aligners such as\nhisat2.graph,hisat2.linear,bowtie2.linear\
    \ (default:\nhisat2.graph)"
  type: long?
  inputBinding:
    prefix: --aligner-list
- id: in_simulate_interval
  doc: "Reads simulated at every these base pairs (default:\n10)"
  type: long?
  inputBinding:
    prefix: --simulate-interval
- id: in_read_len
  doc: 'Length of simulated reads (default: 100)'
  type: long?
  inputBinding:
    prefix: --read-len
- id: in_fragment_len
  doc: 'Length of fragments (default: 350)'
  type: long?
  inputBinding:
    prefix: --fragment-len
- id: in_best_alleles
  doc: 'A seeding number for randomness (default: 1)'
  type: long?
  inputBinding:
    prefix: --best-alleles
- id: in_num_edit_dist
  doc: "Maximum number of mismatches per read alignment to be\nconsidered (default:\
    \ 2)"
  type: long?
  inputBinding:
    prefix: --num-editdist
- id: in_per_base_error_rate
  doc: "Per basepair error rate in percentage when simulating\nreads (default: 0.0)"
  type: double?
  inputBinding:
    prefix: --perbase-errorrate
- id: in_per_base_snp_rate
  doc: "Per basepair SNP rate in percentage when simulating\nreads (default: 0.0)"
  type: double?
  inputBinding:
    prefix: --perbase-snprate
- id: in_skip_fragment_regions
  doc: "A comma-separated list of regions from which no reads\noriginate, e.g., 500-600,1200-1400\
    \ (default: None)."
  type: long?
  inputBinding:
    prefix: --skip-fragment-regions
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_verbose_level
  doc: 'also print some statistics to stderr (default: 0)'
  type: long?
  inputBinding:
    prefix: --verbose-level
- id: in_debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: long?
  inputBinding:
    prefix: --debug
- id: in_assembly_base
  doc: 'base file name (default: assembly_graph)'
  type: File?
  inputBinding:
    prefix: --assembly-base
- id: in_assembly
  doc: Perform assembly
  type: boolean?
  inputBinding:
    prefix: --assembly
- id: in_no_error_correction
  doc: Correct sequencing errors
  type: boolean?
  inputBinding:
    prefix: --no-error-correction
- id: in_keep_alignment
  doc: Keep alignment file
  type: boolean?
  inputBinding:
    prefix: --keep-alignment
- id: in_only_locus_list
  doc: "A comma-separated list of genes (default: empty, all\ngenes)"
  type: string?
  inputBinding:
    prefix: --only-locus-list
- id: in_discordant
  doc: Allow discordantly mapped pairs or singletons
  type: boolean?
  inputBinding:
    prefix: --discordant
- id: in_type_primary_exons
  doc: Look at primary exons first
  type: boolean?
  inputBinding:
    prefix: --type-primary-exons
- id: in_keep_low_abundance_alleles
  doc: "Do not remove alleles with low abundance while\nperforming typing"
  type: boolean?
  inputBinding:
    prefix: --keep-low-abundance-alleles
- id: in_assembly_verbose
  doc: Output intermediate assembly information
  type: boolean?
  inputBinding:
    prefix: --assembly-verbose
- id: in_display_alleles
  doc: "A comma-separated list of alleles to display in HTML\n(default: empty)\n"
  type: string?
  inputBinding:
    prefix: --display-alleles
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_locus.py
