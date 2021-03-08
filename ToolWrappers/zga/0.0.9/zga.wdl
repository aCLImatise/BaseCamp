version 1.0

task Zga {
  input {
    String? first_step
    String? last_step
    Directory? output_dir
    Directory? force
    Int? threads
    Int? memory_limit
    String? genus
    String? species
    String? strain
    Boolean? transparent
    String? domain
    Array[Int] pe_one
    Array[Int] pe_two
    Array[String] pe_merged
    Array[String] single_end
    Array[Int] mp_one
    Array[Int] mp_two
    Array[String] pac_bio
    Array[String] nano_pore
    Int? quality_cut_off
    String? adapters
    Boolean? filter_by_tile
    Boolean? tadpole_correct
    Int? bb_merge_extend
    Int? bb_merge_extend_km_er
    String? bb_merge_trim
    Boolean? calculate_genome_size
    Int? genome_size_estimation
    Int? mash_km_er_copies
    Boolean? use_unknown_mp
    Boolean? no_nx_trim
    String? assembler
    Boolean? no_spades_correction
    Boolean? use_scaffolds
    String? unicycle_r_mode
    Int? linear_seqs
    Boolean? extract_replicons
    Boolean? flye_short_polish
    Boolean? flye_skip_long_polish
    Boolean? perform_polishing
    Int? polishing_iterations
    Boolean? check_phi_x
    String? check_m_mode
    String? check_m_rank
    String? check_m_tax_on
    Boolean? check_m_full_tree
    String? genome
    String? g_code
    Int? locus_tag
    Int? locus_tag_inc
    String? center_name
    Int? minimum_contig_length
    String flow_cell_dot
    String trimming_dot
    String default_dot
  }
  command <<<
    zga \
      ~{flow_cell_dot} \
      ~{trimming_dot} \
      ~{default_dot} \
      ~{if defined(first_step) then ("--first-step " +  '"' + first_step + '"') else ""} \
      ~{if defined(last_step) then ("--last-step " +  '"' + last_step + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(memory_limit) then ("--memory-limit " +  '"' + memory_limit + '"') else ""} \
      ~{if defined(genus) then ("--genus " +  '"' + genus + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if (transparent) then "--transparent" else ""} \
      ~{if defined(domain) then ("--domain " +  '"' + domain + '"') else ""} \
      ~{if defined(pe_one) then ("--pe-1 " +  '"' + pe_one + '"') else ""} \
      ~{if defined(pe_two) then ("--pe-2 " +  '"' + pe_two + '"') else ""} \
      ~{if defined(pe_merged) then ("--pe-merged " +  '"' + pe_merged + '"') else ""} \
      ~{if defined(single_end) then ("--single-end " +  '"' + single_end + '"') else ""} \
      ~{if defined(mp_one) then ("--mp-1 " +  '"' + mp_one + '"') else ""} \
      ~{if defined(mp_two) then ("--mp-2 " +  '"' + mp_two + '"') else ""} \
      ~{if defined(pac_bio) then ("--pacbio " +  '"' + pac_bio + '"') else ""} \
      ~{if defined(nano_pore) then ("--nanopore " +  '"' + nano_pore + '"') else ""} \
      ~{if defined(quality_cut_off) then ("--quality-cutoff " +  '"' + quality_cut_off + '"') else ""} \
      ~{if defined(adapters) then ("--adapters " +  '"' + adapters + '"') else ""} \
      ~{if (filter_by_tile) then "--filter-by-tile" else ""} \
      ~{if (tadpole_correct) then "--tadpole-correct" else ""} \
      ~{if defined(bb_merge_extend) then ("--bbmerge-extend " +  '"' + bb_merge_extend + '"') else ""} \
      ~{if defined(bb_merge_extend_km_er) then ("--bbmerge-extend-kmer " +  '"' + bb_merge_extend_km_er + '"') else ""} \
      ~{if defined(bb_merge_trim) then ("--bbmerge-trim " +  '"' + bb_merge_trim + '"') else ""} \
      ~{if (calculate_genome_size) then "--calculate-genome-size" else ""} \
      ~{if defined(genome_size_estimation) then ("--genome-size-estimation " +  '"' + genome_size_estimation + '"') else ""} \
      ~{if defined(mash_km_er_copies) then ("--mash-kmer-copies " +  '"' + mash_km_er_copies + '"') else ""} \
      ~{if (use_unknown_mp) then "--use-unknown-mp" else ""} \
      ~{if (no_nx_trim) then "--no-nxtrim" else ""} \
      ~{if defined(assembler) then ("--assembler " +  '"' + assembler + '"') else ""} \
      ~{if (no_spades_correction) then "--no-spades-correction" else ""} \
      ~{if (use_scaffolds) then "--use-scaffolds" else ""} \
      ~{if defined(unicycle_r_mode) then ("--unicycler-mode " +  '"' + unicycle_r_mode + '"') else ""} \
      ~{if defined(linear_seqs) then ("--linear-seqs " +  '"' + linear_seqs + '"') else ""} \
      ~{if (extract_replicons) then "--extract-replicons" else ""} \
      ~{if (flye_short_polish) then "--flye-short-polish" else ""} \
      ~{if (flye_skip_long_polish) then "--flye-skip-long-polish" else ""} \
      ~{if (perform_polishing) then "--perform-polishing" else ""} \
      ~{if defined(polishing_iterations) then ("--polishing-iterations " +  '"' + polishing_iterations + '"') else ""} \
      ~{if (check_phi_x) then "--check-phix" else ""} \
      ~{if defined(check_m_mode) then ("--checkm-mode " +  '"' + check_m_mode + '"') else ""} \
      ~{if defined(check_m_rank) then ("--checkm-rank " +  '"' + check_m_rank + '"') else ""} \
      ~{if defined(check_m_tax_on) then ("--checkm-taxon " +  '"' + check_m_tax_on + '"') else ""} \
      ~{if (check_m_full_tree) then "--checkm-full-tree" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(g_code) then ("--gcode " +  '"' + g_code + '"') else ""} \
      ~{if defined(locus_tag) then ("--locus-tag " +  '"' + locus_tag + '"') else ""} \
      ~{if defined(locus_tag_inc) then ("--locus-tag-inc " +  '"' + locus_tag_inc + '"') else ""} \
      ~{if defined(center_name) then ("--center-name " +  '"' + center_name + '"') else ""} \
      ~{if defined(minimum_contig_length) then ("--minimum-contig-length " +  '"' + minimum_contig_length + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/zga:0.0.9--py_0"
  }
  parameter_meta {
    first_step: "First step of the pipeline. Default: readqc"
    last_step: "Last step of the pipeline. Default: annotation"
    output_dir: "Output directory"
    force: "Overwrite output directory if exists"
    threads: "Number of CPU threads to use (where possible)"
    memory_limit: "Memory limit in GB (default 8)"
    genus: "Provide genus if known"
    species: "Provide species if known"
    strain: "Provide strain if known"
    transparent: "Show output from tools inside the pipeline"
    domain: "Provide prokaryotic domain: bacteria or archaea"
    pe_one: "FASTQ file(s) with first (left) paired-end reads.\\nSpace-separated if multiple."
    pe_two: "FASTQ file(s) with second (right) paired-end reads.\\nSpace-separated if multiple."
    pe_merged: "FASTQ file(s) with merged overlapped paired-end reads"
    single_end: "FASTQ file(s) with unpaired or single-end reads"
    mp_one: "Mate pair forward reads. SPAdes only"
    mp_two: "Mate pair forward reads. SPAdes only"
    pac_bio: "PacBio reads. Space-separated if multiple."
    nano_pore: "Nanopore reads. Space-separated if multiple."
    quality_cut_off: "Base quality cutoff for short reads, default: 18"
    adapters: "Adapter sequences for short reads trimming (FASTA). By\\ndefault Illumina and BGI adapter sequences are used."
    filter_by_tile: "Filter short reads based on positional quality over a"
    tadpole_correct: "Perform error correction of short reads with\\ntadpole.sh from BBtools.SPAdes correction may be\\ndisabled with \\\"--no-spades-correction\\\"."
    bb_merge_extend: "Perform k-mer read extension by specified length if\\ninitial merging wasn't succesfull."
    bb_merge_extend_km_er: "K-mer length for read extension, default 40."
    bb_merge_trim: "Before merging trim bases with phred score less than a\\nspecified value."
    calculate_genome_size: "Estimate genome size with mash."
    genome_size_estimation: "Genome size in bp (no K/M suffix supported) for Flye\\nassembler, if known."
    mash_km_er_copies: "Minimum copies of each k-mer to include in size\\nestimation"
    use_unknown_mp: "NxTrim: Include reads that are probably mate pairs\\n(default: only known MP used)"
    no_nx_trim: "Don't process mate-pair reads with NxTrim. Usefull for\\npreprocessed reads"
    assembler: "Assembler: unicycler (default; better quality), spades\\n(faster, may use mate-pair reads) or Flye (long reads\\nonly)."
    no_spades_correction: "Disable short read correction by SPAdes (works for\\nSPAdes and unicycler)."
    use_scaffolds: "SPAdes: Use assembled scaffolds. Contigs are used by"
    unicycle_r_mode: "Unicycler: assember mode: conservative, normal\\n(default) or bold."
    linear_seqs: "Expected number of linear sequences"
    extract_replicons: "Unicycler: extract complete replicons (e.g. plasmids)\\nfrom the short-read based assembly to separate files"
    flye_short_polish: "Perform polishing of Flye assembly with short reads\\nusing racon."
    flye_skip_long_polish: "Skip stage of genome polishing with long reads."
    perform_polishing: "Perform polishing. Useful only for flye assembly of\\nlong reads and short reads available."
    polishing_iterations: "Number of polishing iterations."
    check_phi_x: "Check genome for presence of PhiX control sequence."
    check_m_mode: "Select CheckM working mode. Default is checking for\\ndomain-specific marker-set."
    check_m_rank: "Rank of taxon for CheckM. Run 'checkm taxon_list' for\\ndetails."
    check_m_tax_on: "Taxon for CheckM. Run 'checkm taxon_list' for details."
    check_m_full_tree: "Use full tree for inference of marker set, requires\\nLOTS of memory."
    genome: "Genome assembly (when starting from annotation)."
    g_code: "Genetic code."
    locus_tag: "Locus tag prefix. If not provided prefix will be\\ngenerated from MD5 checksum."
    locus_tag_inc: "Locus tag increment, default = 10"
    center_name: "Genome center name."
    minimum_contig_length: "Minimum sequence length in genome assembly.\\n"
    flow_cell_dot: "--min-short-read-length MIN_SHORT_READ_LENGTH"
    trimming_dot: "--entropy-cutoff ENTROPY_CUTOFF"
    default_dot: "--spades-k-list SPADES_K_LIST"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
    Directory out_force = "${in_force}"
  }
}