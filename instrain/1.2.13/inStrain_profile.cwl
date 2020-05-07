class: CommandLineTool
id: inStrain_profile.cwl
inputs:
- id: bam
  doc: Sorted .bam file
  type: string
  inputBinding:
    position: 0
- id: fast_a
  doc: Fasta file the bam is mapped to
  type: string
  inputBinding:
    position: 1
- id: output
  doc: 'Output prefix (default: inStrain)'
  type: string
  inputBinding:
    prefix: --output
- id: use_full_fast_a_header
  doc: 'Instead of using the fasta ID (space in header before space), use the full
    header. Needed for some mapping tools (including bbMap) (default: False)'
  type: boolean
  inputBinding:
    prefix: --use_full_fasta_header
- id: processes
  doc: 'Number of processes to use (default: 6)'
  type: string
  inputBinding:
    prefix: --processes
- id: debug
  doc: 'Make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: filter_cut_off
  doc: 'Minimum percent identity of read pairs to consensus to use the reads. Must
    be >, not >= (default: 0.95)'
  type: string
  inputBinding:
    prefix: --filter_cutoff
- id: min_mapq
  doc: 'Minimum mapq score of EITHER read in a pair to use that pair. Must be >, not
    >= (default: -1)'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: max_insert_relative
  doc: 'Multiplier to determine maximum insert size between two reads - default is
    to use 3x median insert size. Must be >, not >= (default: 3)'
  type: long
  inputBinding:
    prefix: --max_insert_relative
- id: min_insert
  doc: 'Minimum insert size between two reads - default is 50 bp. If two reads are
    50bp each and overlap completely, their insert will be 50. Must be >, not >= (default:
    50)'
  type: long
  inputBinding:
    prefix: --min_insert
- id: pairing_filter
  doc: 'How should paired reads be handled? paired_only = Only paired reads are retained
    non_discordant = Keep all paired reads and singleton reads that map to a single
    scaffold all_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED;
    See documentation for deatils) (default: paired_only)'
  type: string
  inputBinding:
    prefix: --pairing_filter
- id: priority_reads
  doc: 'The location of a list of reads that should be retained regardless of pairing
    status (for example long reads or merged reads). This can be a .fastq file or
    text file with list of read names (will assume file is compressed if ends in .gz
    (default: None)'
  type: string
  inputBinding:
    prefix: --priority_reads
- id: scaffold_level_read_report
  doc: 'Store read filtering info for each scaffold (default: False)'
  type: boolean
  inputBinding:
    prefix: --scaffold_level_read_report
- id: de_a_tiled_read_report
  doc: 'Make a detailed read report indicating deatils about each individual mapped
    read (default: False)'
  type: boolean
  inputBinding:
    prefix: --deatiled_read_report
- id: min_cov
  doc: 'Minimum coverage to call an variant (default: 5)'
  type: long
  inputBinding:
    prefix: --min_cov
- id: min_freq
  doc: 'Minimum SNP frequency to confirm a SNV (both this AND the FDR snp count cutoff
    must be true to call a SNP). (default: 0.05)'
  type: long
  inputBinding:
    prefix: --min_freq
- id: fdr
  doc: 'SNP false discovery rate- based on simulation data with a 0.1 percent error
    rate (Q30) (default: 1e-06)'
  type: string
  inputBinding:
    prefix: --fdr
- id: gene_file
  doc: 'Path to prodigal .fna genes file. If file ends in .gb or .gbk, will treat
    as a genbank file (EXPERIMENTAL; the name of the gene must be in the gene qualifier)
    (default: None)'
  type: string
  inputBinding:
    prefix: --gene_file
- id: s
  doc: '[STB [STB ...]], --stb [STB [STB ...]] Scaffold to bin. This can be a file
    with each line listing a scaffold and a bin name, tab-seperated. This can also
    be a space-seperated list of .fasta files, with one genome per .fasta file. If
    nothing is provided, all scaffolds will be treated as belonging to the same genome
    (default: [])'
  type: boolean
  inputBinding:
    prefix: -s
- id: mm_level
  doc: 'Create files on the mm level (see documentation for info) (default: False)'
  type: boolean
  inputBinding:
    prefix: --mm_level
- id: min_snp
  doc: 'Absolute minimum number of reads connecting two SNPs to calculate LD between
    them. (default: 20)'
  type: long
  inputBinding:
    prefix: --min_snp
- id: min_fast_a_reads
  doc: 'Minimum number of reads mapping to a scaffold to proceed with profiling it
    (default: 0)'
  type: long
  inputBinding:
    prefix: --min_fasta_reads
- id: store_everything
  doc: 'Store intermediate dictionaries in the pickle file; will result in significantly
    more RAM and disk usage (default: False)'
  type: boolean
  inputBinding:
    prefix: --store_everything
- id: skip_mm_profiling
  doc: 'Dont perform analysis on an mm level; saves RAM and time (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_mm_profiling
- id: scaffolds_to_profile
  doc: 'Path to a file containing a list of scaffolds to profile- if provided will
    ONLY profile those scaffolds (default: None)'
  type: string
  inputBinding:
    prefix: --scaffolds_to_profile
- id: rarefied_coverage
  doc: 'When calculating nucleotide diversity, also calculate a rarefied version with
    this much coverage (default: 50)'
  type: string
  inputBinding:
    prefix: --rarefied_coverage
- id: skip_genome_wide
  doc: 'Do not generate tables that consider groups of scaffolds belonging to genomes
    (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_genome_wide
- id: skip_plot_generation
  doc: 'Do not make plots (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip_plot_generation
outputs: []
cwlVersion: v1.1
baseCommand:
- inStrain
- profile
