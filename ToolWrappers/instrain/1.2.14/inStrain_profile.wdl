version 1.0

task InStrainProfile {
  input {
    String? output_prefix_instrain
    Boolean? use_full_fast_a_header
    Int? processes
    Boolean? debug
    Float? filter_cut_off
    Int? min_mapq
    Int? max_insert_relative
    Int? min_insert
    String? pairing_filter
    File? priority_reads
    Boolean? scaffold_level_read_report
    Boolean? de_a_tiled_read_report
    Int? min_cov
    Int? min_freq
    Float? fdr
    File? gene_file
    Boolean? scaffold_bin_can
    Boolean? mm_level
    Int? min_snp
    Int? min_fast_a_reads
    Boolean? store_everything
    Boolean? skip_mm_profiling
    File? scaffolds_to_profile
    Int? rarefied_coverage
    Boolean? skip_genome_wide
    Boolean? skip_plot_generation
    String bam
    String fast_a
  }
  command <<<
    inStrain profile \
      ~{bam} \
      ~{fast_a} \
      ~{if defined(output_prefix_instrain) then ("--output " +  '"' + output_prefix_instrain + '"') else ""} \
      ~{if (use_full_fast_a_header) then "--use_full_fasta_header" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(filter_cut_off) then ("--filter_cutoff " +  '"' + filter_cut_off + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(max_insert_relative) then ("--max_insert_relative " +  '"' + max_insert_relative + '"') else ""} \
      ~{if defined(min_insert) then ("--min_insert " +  '"' + min_insert + '"') else ""} \
      ~{if defined(pairing_filter) then ("--pairing_filter " +  '"' + pairing_filter + '"') else ""} \
      ~{if defined(priority_reads) then ("--priority_reads " +  '"' + priority_reads + '"') else ""} \
      ~{if (scaffold_level_read_report) then "--scaffold_level_read_report" else ""} \
      ~{if (de_a_tiled_read_report) then "--deatiled_read_report" else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(gene_file) then ("--gene_file " +  '"' + gene_file + '"') else ""} \
      ~{if (scaffold_bin_can) then "-s" else ""} \
      ~{if (mm_level) then "--mm_level" else ""} \
      ~{if defined(min_snp) then ("--min_snp " +  '"' + min_snp + '"') else ""} \
      ~{if defined(min_fast_a_reads) then ("--min_fasta_reads " +  '"' + min_fast_a_reads + '"') else ""} \
      ~{if (store_everything) then "--store_everything" else ""} \
      ~{if (skip_mm_profiling) then "--skip_mm_profiling" else ""} \
      ~{if defined(scaffolds_to_profile) then ("--scaffolds_to_profile " +  '"' + scaffolds_to_profile + '"') else ""} \
      ~{if defined(rarefied_coverage) then ("--rarefied_coverage " +  '"' + rarefied_coverage + '"') else ""} \
      ~{if (skip_genome_wide) then "--skip_genome_wide" else ""} \
      ~{if (skip_plot_generation) then "--skip_plot_generation" else ""}
  >>>
  parameter_meta {
    output_prefix_instrain: "Output prefix (default: inStrain)"
    use_full_fast_a_header: "Instead of using the fasta ID (space in header before\\nspace), use the full header. Needed for some mapping\\ntools (including bbMap) (default: False)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    filter_cut_off: "Minimum percent identity of read pairs to consensus to\\nuse the reads. Must be >, not >= (default: 0.95)"
    min_mapq: "Minimum mapq score of EITHER read in a pair to use\\nthat pair. Must be >, not >= (default: -1)"
    max_insert_relative: "Multiplier to determine maximum insert size between\\ntwo reads - default is to use 3x median insert size.\\nMust be >, not >= (default: 3)"
    min_insert: "Minimum insert size between two reads - default is 50\\nbp. If two reads are 50bp each and overlap completely,\\ntheir insert will be 50. Must be >, not >= (default:\\n50)"
    pairing_filter: "How should paired reads be handled?\\npaired_only = Only paired reads are retained\\nnon_discordant = Keep all paired reads and singleton reads that map to a single scaffold\\nall_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED; See documentation for deatils)\\n(default: paired_only)"
    priority_reads: "The location of a list of reads that should be\\nretained regardless of pairing status (for example\\nlong reads or merged reads). This can be a .fastq file\\nor text file with list of read names (will assume file\\nis compressed if ends in .gz (default: None)"
    scaffold_level_read_report: "Store read filtering info for each scaffold (default:\\nFalse)"
    de_a_tiled_read_report: "Make a detailed read report indicating deatils about\\neach individual mapped read (default: False)"
    min_cov: "Minimum coverage to call an variant (default: 5)"
    min_freq: "Minimum SNP frequency to confirm a SNV (both this AND\\nthe FDR snp count cutoff must be true to call a SNP).\\n(default: 0.05)"
    fdr: "SNP false discovery rate- based on simulation data\\nwith a 0.1 percent error rate (Q30) (default: 1e-06)"
    gene_file: "Path to prodigal .fna genes file. If file ends in .gb\\nor .gbk, will treat as a genbank file (EXPERIMENTAL;\\nthe name of the gene must be in the gene qualifier)\\n(default: None)"
    scaffold_bin_can: "[STB [STB ...]], --stb [STB [STB ...]]\\nScaffold to bin. This can be a file with each line\\nlisting a scaffold and a bin name, tab-seperated. This\\ncan also be a space-seperated list of .fasta files,\\nwith one genome per .fasta file. If nothing is\\nprovided, all scaffolds will be treated as belonging\\nto the same genome (default: [])"
    mm_level: "Create files on the mm level (see documentation for\\ninfo) (default: False)"
    min_snp: "Absolute minimum number of reads connecting two SNPs\\nto calculate LD between them. (default: 20)"
    min_fast_a_reads: "Minimum number of reads mapping to a scaffold to\\nproceed with profiling it (default: 0)"
    store_everything: "Store intermediate dictionaries in the pickle file;\\nwill result in significantly more RAM and disk usage\\n(default: False)"
    skip_mm_profiling: "Dont perform analysis on an mm level; saves RAM and\\ntime (default: False)"
    scaffolds_to_profile: "Path to a file containing a list of scaffolds to\\nprofile- if provided will ONLY profile those scaffolds\\n(default: None)"
    rarefied_coverage: "When calculating nucleotide diversity, also calculate\\na rarefied version with this much coverage (default:\\n50)"
    skip_genome_wide: "Do not generate tables that consider groups of\\nscaffolds belonging to genomes (default: False)"
    skip_plot_generation: "Do not make plots (default: False)\\n"
    bam: "Sorted .bam file"
    fast_a: "Fasta file the bam is mapped to"
  }
  output {
    File out_stdout = stdout()
  }
}