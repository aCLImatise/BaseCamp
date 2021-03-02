class: CommandLineTool
id: inStrain_profile.cwl
inputs:
- id: in_output
  doc: 'Output prefix (default: inStrain)'
  type: string?
  inputBinding:
    prefix: --output
- id: in_use_full_fast_a_header
  doc: "Instead of using the fasta ID (space in header before\nspace), use the full\
    \ header. Needed for some mapping\ntools (including bbMap) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --use_full_fasta_header
- id: in_processes
  doc: 'Number of processes to use (default: 6)'
  type: long?
  inputBinding:
    prefix: --processes
- id: in_debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_filter_cut_off
  doc: "Minimum percent identity of read pairs to consensus to\nuse the reads. Must\
    \ be >, not >= (default: 0.95)"
  type: double?
  inputBinding:
    prefix: --filter_cutoff
- id: in_min_mapq
  doc: "Minimum mapq score of EITHER read in a pair to use\nthat pair. Must be >,\
    \ not >= (default: -1)"
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_max_insert_relative
  doc: "Multiplier to determine maximum insert size between\ntwo reads - default is\
    \ to use 3x median insert size.\nMust be >, not >= (default: 3)"
  type: long?
  inputBinding:
    prefix: --max_insert_relative
- id: in_min_insert
  doc: "Minimum insert size between two reads - default is 50\nbp. If two reads are\
    \ 50bp each and overlap completely,\ntheir insert will be 50. Must be >, not >=\
    \ (default:\n50)"
  type: long?
  inputBinding:
    prefix: --min_insert
- id: in_pairing_filter
  doc: "How should paired reads be handled?\npaired_only = Only paired reads are retained\n\
    non_discordant = Keep all paired reads and singleton reads that map to a single\
    \ scaffold\nall_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED;\
    \ See documentation for deatils)\n(default: paired_only)"
  type: string?
  inputBinding:
    prefix: --pairing_filter
- id: in_priority_reads
  doc: "The location of a list of reads that should be\nretained regardless of pairing\
    \ status (for example\nlong reads or merged reads). This can be a .fastq file\n\
    or text file with list of read names (will assume file\nis compressed if ends\
    \ in .gz (default: None)"
  type: File?
  inputBinding:
    prefix: --priority_reads
- id: in_scaffold_level_read_report
  doc: "Store read filtering info for each scaffold (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --scaffold_level_read_report
- id: in_de_a_tiled_read_report
  doc: "Make a detailed read report indicating deatils about\neach individual mapped\
    \ read (default: False)"
  type: boolean?
  inputBinding:
    prefix: --deatiled_read_report
- id: in_min_cov
  doc: 'Minimum coverage to call an variant (default: 5)'
  type: long?
  inputBinding:
    prefix: --min_cov
- id: in_min_freq
  doc: "Minimum SNP frequency to confirm a SNV (both this AND\nthe FDR snp count cutoff\
    \ must be true to call a SNP).\n(default: 0.05)"
  type: long?
  inputBinding:
    prefix: --min_freq
- id: in_fdr
  doc: "SNP false discovery rate- based on simulation data\nwith a 0.1 percent error\
    \ rate (Q30) (default: 1e-06)"
  type: double?
  inputBinding:
    prefix: --fdr
- id: in_gene_file
  doc: "Path to prodigal .fna genes file. If file ends in .gb\nor .gbk, will treat\
    \ as a genbank file (EXPERIMENTAL;\nthe name of the gene must be in the gene qualifier)\n\
    (default: None)"
  type: File?
  inputBinding:
    prefix: --gene_file
- id: in_scaffold_bin_be
  doc: "[STB [STB ...]], --stb [STB [STB ...]]\nScaffold to bin. This can be a file\
    \ with each line\nlisting a scaffold and a bin name, tab-seperated. This\ncan\
    \ also be a space-seperated list of .fasta files,\nwith one genome per .fasta\
    \ file. If nothing is\nprovided, all scaffolds will be treated as belonging\n\
    to the same genome (default: [])"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_mm_level
  doc: "Create files on the mm level (see documentation for\ninfo) (default: False)"
  type: boolean?
  inputBinding:
    prefix: --mm_level
- id: in_min_snp
  doc: "Absolute minimum number of reads connecting two SNPs\nto calculate LD between\
    \ them. (default: 20)"
  type: long?
  inputBinding:
    prefix: --min_snp
- id: in_min_fast_a_reads
  doc: "Minimum number of reads mapping to a scaffold to\nproceed with profiling it\
    \ (default: 0)"
  type: long?
  inputBinding:
    prefix: --min_fasta_reads
- id: in_store_everything
  doc: "Store intermediate dictionaries in the pickle file;\nwill result in significantly\
    \ more RAM and disk usage\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --store_everything
- id: in_skip_mm_profiling
  doc: "Dont perform analysis on an mm level; saves RAM and\ntime (default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_mm_profiling
- id: in_scaffolds_to_profile
  doc: "Path to a file containing a list of scaffolds to\nprofile- if provided will\
    \ ONLY profile those scaffolds\n(default: None)"
  type: File?
  inputBinding:
    prefix: --scaffolds_to_profile
- id: in_rarefied_coverage
  doc: "When calculating nucleotide diversity, also calculate\na rarefied version\
    \ with this much coverage (default:\n50)"
  type: long?
  inputBinding:
    prefix: --rarefied_coverage
- id: in_skip_genome_wide
  doc: "Do not generate tables that consider groups of\nscaffolds belonging to genomes\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --skip_genome_wide
- id: in_skip_plot_generation
  doc: "Do not make plots (default: False)\n"
  type: boolean?
  inputBinding:
    prefix: --skip_plot_generation
- id: in_bam
  doc: Sorted .bam file
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: Fasta file the bam is mapped to
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- inStrain
- profile
