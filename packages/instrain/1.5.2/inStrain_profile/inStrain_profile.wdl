version 1.0

task InStrainProfile {
  input {
    String? output_prefix_default
    Boolean? use_full_fast_a_header
    Int? processes
    Boolean? debug
    Int? min_read_ani
    Int? min_mapq
    Int? max_insert_relative
    Int? min_insert
    String? pairing_filter
    File? priority_reads
    Boolean? detailed_mapping_info
    Int? min_cov
    Int? min_freq
    Float? fdr
    File? gene_file
    Boolean? scaffold_bin_be
    Boolean? mm_level
    Boolean? skip_mm_profiling
    Boolean? database_mode
    Int? min_scaffold_reads
    Int? min_genome_coverage
    Int? min_snp
    Boolean? store_everything
    File? scaffolds_to_profile
    Int? rarefied_coverage
    Int? window_length
    Boolean? skip_genome_wide
    Boolean? skip_plot_generation
    String bam
    String fast_a
  }
  command <<<
    inStrain profile \
      ~{bam} \
      ~{fast_a} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if (use_full_fast_a_header) then "--use_full_fasta_header" else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(min_read_ani) then ("--min_read_ani " +  '"' + min_read_ani + '"') else ""} \
      ~{if defined(min_mapq) then ("--min_mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(max_insert_relative) then ("--max_insert_relative " +  '"' + max_insert_relative + '"') else ""} \
      ~{if defined(min_insert) then ("--min_insert " +  '"' + min_insert + '"') else ""} \
      ~{if defined(pairing_filter) then ("--pairing_filter " +  '"' + pairing_filter + '"') else ""} \
      ~{if defined(priority_reads) then ("--priority_reads " +  '"' + priority_reads + '"') else ""} \
      ~{if (detailed_mapping_info) then "--detailed_mapping_info" else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_freq) then ("--min_freq " +  '"' + min_freq + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(gene_file) then ("--gene_file " +  '"' + gene_file + '"') else ""} \
      ~{if (scaffold_bin_be) then "-s" else ""} \
      ~{if (mm_level) then "--mm_level" else ""} \
      ~{if (skip_mm_profiling) then "--skip_mm_profiling" else ""} \
      ~{if (database_mode) then "--database_mode" else ""} \
      ~{if defined(min_scaffold_reads) then ("--min_scaffold_reads " +  '"' + min_scaffold_reads + '"') else ""} \
      ~{if defined(min_genome_coverage) then ("--min_genome_coverage " +  '"' + min_genome_coverage + '"') else ""} \
      ~{if defined(min_snp) then ("--min_snp " +  '"' + min_snp + '"') else ""} \
      ~{if (store_everything) then "--store_everything" else ""} \
      ~{if defined(scaffolds_to_profile) then ("--scaffolds_to_profile " +  '"' + scaffolds_to_profile + '"') else ""} \
      ~{if defined(rarefied_coverage) then ("--rarefied_coverage " +  '"' + rarefied_coverage + '"') else ""} \
      ~{if defined(window_length) then ("--window_length " +  '"' + window_length + '"') else ""} \
      ~{if (skip_genome_wide) then "--skip_genome_wide" else ""} \
      ~{if (skip_plot_generation) then "--skip_plot_generation" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.2--py_0"
  }
  parameter_meta {
    output_prefix_default: "Output prefix (default: inStrain)"
    use_full_fast_a_header: "Instead of using the fasta ID (space in header before\\nspace), use the full header. Needed for some mapping\\ntools (including bbMap) (default: False)"
    processes: "Number of processes to use (default: 6)"
    debug: "Make extra debugging output (default: False)"
    min_read_ani: "Minimum percent identity of read pairs to consensus to\\nuse the reads. Must be >, not >= (default: 0.95)"
    min_mapq: "Minimum mapq score of EITHER read in a pair to use\\nthat pair. Must be >, not >= (default: -1)"
    max_insert_relative: "Multiplier to determine maximum insert size between\\ntwo reads - default is to use 3x median insert size.\\nMust be >, not >= (default: 3)"
    min_insert: "Minimum insert size between two reads - default is 50\\nbp. If two reads are 50bp each and overlap completely,\\ntheir insert will be 50. Must be >, not >= (default:\\n50)"
    pairing_filter: "How should paired reads be handled?\\npaired_only = Only paired reads are retained\\nnon_discordant = Keep all paired reads and singleton reads that map to a single scaffold\\nall_reads = Keep all reads regardless of pairing status (NOT RECOMMENDED; See documentation for deatils)\\n(default: paired_only)"
    priority_reads: "The location of a list of reads that should be\\nretained regardless of pairing status (for example\\nlong reads or merged reads). This can be a .fastq file\\nor text file with list of read names (will assume file\\nis compressed if ends in .gz (default: None)"
    detailed_mapping_info: "Make a detailed read report indicating deatils about\\neach individual mapped read (default: False)"
    min_cov: "Minimum coverage to call an variant (default: 5)"
    min_freq: "Minimum SNP frequency to confirm a SNV (both this AND\\nthe FDR snp count cutoff must be true to call a SNP).\\n(default: 0.05)"
    fdr: "SNP false discovery rate- based on simulation data\\nwith a 0.1 percent error rate (Q30) (default: 1e-06)"
    gene_file: "Path to prodigal .fna genes file. If file ends in .gb\\nor .gbk, will treat as a genbank file (EXPERIMENTAL;\\nthe name of the gene must be in the gene qualifier)\\n(default: None)"
    scaffold_bin_be: "[STB [STB ...]], --stb [STB [STB ...]]\\nScaffold to bin. This can be a file with each line\\nlisting a scaffold and a bin name, tab-seperated. This\\ncan also be a space-seperated list of .fasta files,\\nwith one genome per .fasta file. If nothing is\\nprovided, all scaffolds will be treated as belonging\\nto the same genome (default: [])"
    mm_level: "Create output files on the mm level (see documentation\\nfor info) (default: False)"
    skip_mm_profiling: "Dont perform analysis on an mm level; saves RAM and\\ntime; impacts plots and raw_data (default: False)"
    database_mode: "Set a number of parameters to values appropriate for\\nmapping to a large fasta file. Will set:\\n--min_read_ani 0.92 --skip_mm_profiling\\n--min_genome_coverage 1 (default: False)"
    min_scaffold_reads: "Minimum number of reads mapping to a scaffold to\\nproceed with profiling it (default: 1)"
    min_genome_coverage: "Minimum number of reads mapping to a genome to proceed\\nwith profiling it. MUST profile .stb if this is set\\n(default: 0)"
    min_snp: "Absolute minimum number of reads connecting two SNPs\\nto calculate LD between them. (default: 20)"
    store_everything: "Store intermediate dictionaries in the pickle file;\\nwill result in significantly more RAM and disk usage\\n(default: False)"
    scaffolds_to_profile: "Path to a file containing a list of scaffolds to\\nprofile- if provided will ONLY profile those scaffolds\\n(default: None)"
    rarefied_coverage: "When calculating nucleotide diversity, also calculate\\na rarefied version with this much coverage (default:\\n50)"
    window_length: "Break scaffolds into windows of this length when\\nprofiling (default: 10000)"
    skip_genome_wide: "Do not generate tables that consider groups of\\nscaffolds belonging to genomes (default: False)"
    skip_plot_generation: "Do not make plots (default: False)\\n"
    bam: "Sorted .bam file"
    fast_a: "Fasta file the bam is mapped to"
  }
  output {
    File out_stdout = stdout()
  }
}