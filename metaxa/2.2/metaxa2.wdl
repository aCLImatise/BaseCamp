version 1.0

task Metaxa2 {
  input {
    String? dna_fasta_file
    File? base_names_output
    String? dna_fastq_first
    String? dna_fastq_second
    String? f
    String? specifies_format_f
    String? specifies_barcoding_gene
    String? pair_file
    String? format
    String? mode
    String? run_only_extraction_part
    String? run_only_classification_part
    String? path_directory_hmmprofile
    String? blast_databased_used
    File? hmms_can
    Directory? date
    String? plus
    String? u_search
    String? u_search_bin
    String? u_blast
    String? reset
    String? minimum_quality_value
    String? quality_filter
    String? quality_trim
    String? quality_percent
    String? ignore_paired_read
    String? distance
    String? profile_set_use
    String? domain_evalue_cutoff
    String? domain_score_cutoff
    String? minimal_number_match
    String? number_sequence_matches
    String? reliability_cutoff_taxonomic
    String? sets_cutoff_classified
    String? number_prediction_given
    String? selection_priority
    String? scoring_model
    String? search_eval
    String? search_score
    String? blast_eval
    String? blast_score
    String? blast_word_size
    String? allow_single_domain
    String? allow_reorder
    String? complement
    String? cpu
    String? multi_thread
    String? heuristics
    String? mega_blast
    String? reference
    String? ref_identity
    String? summary
    String? graphical
    String? fast_a
    String? split_pairs
    String? table
    String? taxonomy
    String? rel_tax
    String? tax_level
    String? not_found
    String? align
    String? truncate
    String? guess_species
    String? silent
    String? graph_scale
    String? save_raw
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2 \
      ~{if defined(dna_fasta_file) then ("-i " +  '"' + dna_fasta_file + '"') else ""} \
      ~{if defined(base_names_output) then ("-o " +  '"' + base_names_output + '"') else ""} \
      ~{if defined(dna_fastq_first) then ("-1 " +  '"' + dna_fastq_first + '"') else ""} \
      ~{if defined(dna_fastq_second) then ("-2 " +  '"' + dna_fastq_second + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(specifies_format_f) then ("-z " +  '"' + specifies_format_f + '"') else ""} \
      ~{if defined(specifies_barcoding_gene) then ("-g " +  '"' + specifies_barcoding_gene + '"') else ""} \
      ~{if defined(pair_file) then ("--pairfile " +  '"' + pair_file + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(run_only_extraction_part) then ("-x " +  '"' + run_only_extraction_part + '"') else ""} \
      ~{if defined(run_only_classification_part) then ("-c " +  '"' + run_only_classification_part + '"') else ""} \
      ~{if defined(path_directory_hmmprofile) then ("-p " +  '"' + path_directory_hmmprofile + '"') else ""} \
      ~{if defined(blast_databased_used) then ("-d " +  '"' + blast_databased_used + '"') else ""} \
      ~{if defined(hmms_can) then ("--hmmscan " +  '"' + hmms_can + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(plus) then ("--plus " +  '"' + plus + '"') else ""} \
      ~{if defined(u_search) then ("--usearch " +  '"' + u_search + '"') else ""} \
      ~{if defined(u_search_bin) then ("--usearch_bin " +  '"' + u_search_bin + '"') else ""} \
      ~{if defined(u_blast) then ("--ublast " +  '"' + u_blast + '"') else ""} \
      ~{if defined(reset) then ("--reset " +  '"' + reset + '"') else ""} \
      ~{if defined(minimum_quality_value) then ("-q " +  '"' + minimum_quality_value + '"') else ""} \
      ~{if defined(quality_filter) then ("--quality_filter " +  '"' + quality_filter + '"') else ""} \
      ~{if defined(quality_trim) then ("--quality_trim " +  '"' + quality_trim + '"') else ""} \
      ~{if defined(quality_percent) then ("--quality_percent " +  '"' + quality_percent + '"') else ""} \
      ~{if defined(ignore_paired_read) then ("--ignore_paired_read " +  '"' + ignore_paired_read + '"') else ""} \
      ~{if defined(distance) then ("--distance " +  '"' + distance + '"') else ""} \
      ~{if defined(profile_set_use) then ("-t " +  '"' + profile_set_use + '"') else ""} \
      ~{if defined(domain_evalue_cutoff) then ("-E " +  '"' + domain_evalue_cutoff + '"') else ""} \
      ~{if defined(domain_score_cutoff) then ("-S " +  '"' + domain_score_cutoff + '"') else ""} \
      ~{if defined(minimal_number_match) then ("-N " +  '"' + minimal_number_match + '"') else ""} \
      ~{if defined(number_sequence_matches) then ("-M " +  '"' + number_sequence_matches + '"') else ""} \
      ~{if defined(reliability_cutoff_taxonomic) then ("-R " +  '"' + reliability_cutoff_taxonomic + '"') else ""} \
      ~{if defined(sets_cutoff_classified) then ("-T " +  '"' + sets_cutoff_classified + '"') else ""} \
      ~{if defined(number_prediction_given) then ("-H " +  '"' + number_prediction_given + '"') else ""} \
      ~{if defined(selection_priority) then ("--selection_priority " +  '"' + selection_priority + '"') else ""} \
      ~{if defined(scoring_model) then ("--scoring_model " +  '"' + scoring_model + '"') else ""} \
      ~{if defined(search_eval) then ("--search_eval " +  '"' + search_eval + '"') else ""} \
      ~{if defined(search_score) then ("--search_score " +  '"' + search_score + '"') else ""} \
      ~{if defined(blast_eval) then ("--blast_eval " +  '"' + blast_eval + '"') else ""} \
      ~{if defined(blast_score) then ("--blast_score " +  '"' + blast_score + '"') else ""} \
      ~{if defined(blast_word_size) then ("--blast_wordsize " +  '"' + blast_word_size + '"') else ""} \
      ~{if defined(allow_single_domain) then ("--allow_single_domain " +  '"' + allow_single_domain + '"') else ""} \
      ~{if defined(allow_reorder) then ("--allow_reorder " +  '"' + allow_reorder + '"') else ""} \
      ~{if defined(complement) then ("--complement " +  '"' + complement + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(multi_thread) then ("--multi_thread " +  '"' + multi_thread + '"') else ""} \
      ~{if defined(heuristics) then ("--heuristics " +  '"' + heuristics + '"') else ""} \
      ~{if defined(mega_blast) then ("--megablast " +  '"' + mega_blast + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(ref_identity) then ("--ref_identity " +  '"' + ref_identity + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(graphical) then ("--graphical " +  '"' + graphical + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(split_pairs) then ("--split_pairs " +  '"' + split_pairs + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(rel_tax) then ("--reltax " +  '"' + rel_tax + '"') else ""} \
      ~{if defined(tax_level) then ("--taxlevel " +  '"' + tax_level + '"') else ""} \
      ~{if defined(not_found) then ("--not_found " +  '"' + not_found + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if defined(truncate) then ("--truncate " +  '"' + truncate + '"') else ""} \
      ~{if defined(guess_species) then ("--guess_species " +  '"' + guess_species + '"') else ""} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(graph_scale) then ("--graph_scale " +  '"' + graph_scale + '"') else ""} \
      ~{if defined(save_raw) then ("--save_raw " +  '"' + save_raw + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  parameter_meta {
    dna_fasta_file: ": DNA FASTA or FASTQ input file to investigate"
    base_names_output: ": Base for the names of output file(s)"
    dna_fastq_first: ": DNA FASTQ input file containing the first reads in the read pairs to investigate"
    dna_fastq_second: ": DNA FASTQ input file containing the second reads in the pairs to investigate"
    f: ": Specifies the format of the input file, default = auto"
    specifies_format_f: ": Specifies the format of the input file, default = f (off)"
    specifies_barcoding_gene: ": Specifies the barcoding gene Metaxa should look for, default is ssu"
    pair_file: ": DNA FASTQ file containing the pairs to the sequences in the input file"
    format: ": Specifies the format of the input file, default = auto"
    mode: ": Controls the Metaxa2 operating mode, default = metagenome"
    run_only_extraction_part: ": Run only the extraction part of Metaxa2, without classification, off (F) by default"
    run_only_classification_part: ": Run only the classification part of Metaxa2, without prior extraction, off (F) by default"
    path_directory_hmmprofile: ": A path to a directory of HMM-profile collections representing rRNA conserved regions, default is in the same directory as metaxa itself"
    blast_databased_used: ": The BLAST databased used for classification, default is in the same directory as metaxa itself"
    hmms_can: ": If the hmmscan has already been performed, this option can be used as the base for the hmmscan output files, and the hmmscan step will be skipped. Overrides the -o option, while a DNA FASTA file must still be supplied!"
    date: ": Adds a date and time stamp to the output directory, off (F) by default"
    plus: ": Runs blast search through blast+ instead of the legacy blastall engine, off (F) by default"
    u_search: ": Runs usearch instead of blast, specify version, off (0) by default"
    u_search_bin: ": Specifies the location of the Usearch binary to be used, default is 'usearch' only"
    u_blast: ": Runs the Ublast algorithm instead of Usearch algorithm, default is on (T)"
    reset: ": Rebuilds the HMM database. Useful if HMMER has been updated or searches seem to fail mysteriously, off (F) by default"
    minimum_quality_value: ": Minimum quality value for basecalling, default = 20"
    quality_filter: ": Filter out low-quality reads (below specified -q value), off (F) by default"
    quality_trim: ": Trim away ends of low quality (below -q value), off (F) by default"
    quality_percent: ": Percentage of low-quality (below -q value) accepted before filtering/trimming, default=10"
    ignore_paired_read: ": Do not discard the entire pair if only one of the reads is of bad quality, on (T) by default"
    distance: ": Specifies the distance between the sequence pairs, default = 150"
    profile_set_use: ": Profile set to use for the search (comma-separated), default is all"
    domain_evalue_cutoff: ": Domain E-value cutoff for a sequence to be included in the output, default = 1"
    domain_score_cutoff: ": Domain score cutoff for a sequence to be included in the output, default = 12"
    minimal_number_match: ": The minimal number of domains that must match a sequence before it is included, default = 2"
    number_sequence_matches: ": Number of sequence matches to consider for classification, default = 5"
    reliability_cutoff_taxonomic: ": Reliability cutoff for taxonomic classification, default = 75"
    sets_cutoff_classified: ": Sets the percent identity cutoff to be classified at a certain taxonomic level\\nBy default, these values are specified by the database used.\\nOrder of the values is:         Kingdom/Domain,Phylum,Class,Order,Family,Genus,Species\\nDefault values for the SSU are: 0,60,70,75,85,90,97"
    number_prediction_given: ": The number of points that the Metaxa Extractor prediction is given, default is the same as the number of sequences (-M option)"
    selection_priority: ": Selects what will be of highest priority when determining the origin of the sequence, default is score"
    scoring_model: ": Selects the scoring model to be used for classification, select 'old' to use the pre 2.2 scoring model, default = new"
    search_eval: ": The E-value cutoff used in the HMMER search, high numbers may slow down the process, cannot be used with the --search_score option, default is to use score cutoff, not E-value"
    search_score: ": The score cutoff used in the HMMER search, low numbers may slow down the process, cannot be used with the --search_eval option, default = 0"
    blast_eval: ": The E-value cutoff used in the BLAST search, high numbers may slow down the process, cannot be used with the --blast_score option, default is 1e-5"
    blast_score: ": The score cutoff used in the BLAST search, low numbers may slow down the process, cannot be used with the --blast_eval option, default is to used E-value cutoff, not score"
    blast_word_size: ": The word-size used for the BLAST-based classification, default is 14"
    allow_single_domain: ": Allow inclusion of sequences that only find a single domain, given that they satisfy the given E-value and score thresholds, on with parameters 1e-10,0 by default"
    allow_reorder: ": Allows profiles to be in the wrong order on extracted sequences, on (T) by default"
    complement: ": Checks both DNA strands against the database, creating reverse complements, on (T) by default"
    cpu: ": The number of CPU threads to use, default is 1"
    multi_thread: ": Multi-thread the HMMER-search, on (T) if number of CPUs (--cpu option > 1), else off (F) by default"
    heuristics: ": Selects whether to use HMMER's heuristic filtering, on (T) by default"
    mega_blast: ": Uses megablast for classification for better speed but less accuracy, off (F) by default"
    reference: ": A file in FASTA format containing reference sequences to be sent to a separate file in the analysis, default is blank (unused)"
    ref_identity: ": The sequence identity cutoff to be considered a sequence to be derived from a reference entry, default = 99"
    summary: ": Summary of results output, on (T) by default"
    graphical: ": 'Graphical' output, on (T) by default"
    fast_a: ": FASTA-format output of extracted rRNA sequences, on (T) by default"
    split_pairs: ": Outputs the two read pairs separately instead of as a joint rRNA sequence, off (F) by default"
    table: ": Table format output of sequences containing probable rRNAs, off (F) by default"
    taxonomy: ": Table format output of probable taxonomic origin for sequences, on (T) by default"
    rel_tax: ": Output of probable taxonomic origin for sequences with reliability scores at each rank, off (F) by default"
    tax_level: ": Force Metaxa to classify sequences at a certain taxonomy level, regardless of reliability score, off (0) by default"
    not_found: ": Saves a list of non-found entries, off (F) by default"
    align: ": Outputs alignments of BLAST matches to query in all, uncertain or no cases, requires MAFFT to be installed, default is 'none'"
    truncate: ": Truncates the FASTA output to only contain the putative rRNA sequence found, on (T) by default"
    guess_species: ": Writes a species guess (which can be pretty far off) to the FASTA definition line, off (F) by default (depreciated option, use --taxonomy instead)"
    silent: ": Supresses printing progress info to stderr, off (F) by default"
    graph_scale: ": Sets the scale of the graph output, if value is zero, a percentage view is shown, default = 0"
    save_raw: ": saves all raw data for searches etc. instead of removing it on finish, off (F) by default"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out_base_names_output = "${in_base_names_output}"
    File out_hmms_can = "${in_hmms_can}"
    Directory out_date = "${in_date}"
  }
}