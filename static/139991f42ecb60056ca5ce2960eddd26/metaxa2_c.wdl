version 1.0

task Metaxa2C {
  input {
    String? dna_fasta_input
    File? base_names_output
    String? blast_databased_used
    Directory? date
    String? profile_set_use
    String? specifies_barcoding_gene
    String? mode
    String? domain_evalue_cutoff
    String? domain_score_cutoff
    String? number_sequence_matches
    String? reliability_cutoff_taxonomic
    String? sets_cutoff_classified
    String? scoring_model
    String? number_prediction_given
    String? blast_eval
    String? blast_score
    String? blast_word_size
    String? cpu
    String? mega_blast
    String? plus
    String? u_search
    String? u_search_bin
    String? u_blast
    String? reference
    String? ref_identity
    String? summary
    String? fast_a
    String? split_pairs
    String? table
    String? taxonomy
    String? rel_tax
    String? tax_level
    String? align
    String? guess_species
    String? not_found
    String? silent
    String? save_raw
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2_c \
      ~{if defined(dna_fasta_input) then ("-i " +  '"' + dna_fasta_input + '"') else ""} \
      ~{if defined(base_names_output) then ("-o " +  '"' + base_names_output + '"') else ""} \
      ~{if defined(blast_databased_used) then ("-d " +  '"' + blast_databased_used + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(profile_set_use) then ("-t " +  '"' + profile_set_use + '"') else ""} \
      ~{if defined(specifies_barcoding_gene) then ("-g " +  '"' + specifies_barcoding_gene + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(domain_evalue_cutoff) then ("-E " +  '"' + domain_evalue_cutoff + '"') else ""} \
      ~{if defined(domain_score_cutoff) then ("-S " +  '"' + domain_score_cutoff + '"') else ""} \
      ~{if defined(number_sequence_matches) then ("-M " +  '"' + number_sequence_matches + '"') else ""} \
      ~{if defined(reliability_cutoff_taxonomic) then ("-R " +  '"' + reliability_cutoff_taxonomic + '"') else ""} \
      ~{if defined(sets_cutoff_classified) then ("-T " +  '"' + sets_cutoff_classified + '"') else ""} \
      ~{if defined(scoring_model) then ("--scoring_model " +  '"' + scoring_model + '"') else ""} \
      ~{if defined(number_prediction_given) then ("-H " +  '"' + number_prediction_given + '"') else ""} \
      ~{if defined(blast_eval) then ("--blast_eval " +  '"' + blast_eval + '"') else ""} \
      ~{if defined(blast_score) then ("--blast_score " +  '"' + blast_score + '"') else ""} \
      ~{if defined(blast_word_size) then ("--blast_wordsize " +  '"' + blast_word_size + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(mega_blast) then ("--megablast " +  '"' + mega_blast + '"') else ""} \
      ~{if defined(plus) then ("--plus " +  '"' + plus + '"') else ""} \
      ~{if defined(u_search) then ("--usearch " +  '"' + u_search + '"') else ""} \
      ~{if defined(u_search_bin) then ("--usearch_bin " +  '"' + u_search_bin + '"') else ""} \
      ~{if defined(u_blast) then ("--ublast " +  '"' + u_blast + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(ref_identity) then ("--ref_identity " +  '"' + ref_identity + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(split_pairs) then ("--split_pairs " +  '"' + split_pairs + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(taxonomy) then ("--taxonomy " +  '"' + taxonomy + '"') else ""} \
      ~{if defined(rel_tax) then ("--reltax " +  '"' + rel_tax + '"') else ""} \
      ~{if defined(tax_level) then ("--taxlevel " +  '"' + tax_level + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if defined(guess_species) then ("--guess_species " +  '"' + guess_species + '"') else ""} \
      ~{if defined(not_found) then ("--not_found " +  '"' + not_found + '"') else ""} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(save_raw) then ("--save_raw " +  '"' + save_raw + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna_fasta_input: ": DNA FASTA input file of rRNA sequences to investigate"
    base_names_output: ": Base for the names of output file(s)"
    blast_databased_used: ": The BLAST databased used for classification, default is in the same directory as metaxa itself"
    date: ": Adds a date and time stamp to the output directory, off (F) by default"
    profile_set_use: ": Profile set to use for the search (comma-separated), default is all"
    specifies_barcoding_gene: ": Specifies the barcoding gene Metaxa should look for, default is ssu"
    mode: ": Controls the Metaxa2 operating mode, default = metagenome"
    domain_evalue_cutoff: ": Domain E-value cutoff for a sequence to be included in the output, default = 1"
    domain_score_cutoff: ": Domain score cutoff for a sequence to be included in the output, default = 12"
    number_sequence_matches: ": Number of sequence matches to consider for classification, default = 5"
    reliability_cutoff_taxonomic: ": Reliability cutoff for taxonomic classification, default = 75"
    sets_cutoff_classified: ": Sets the percent identity cutoff to be classified at a certain taxonomic level\\nOrder of the values is: Kingdom/Domain,Phylum,Class,Order,Family,Genus,Species\\nDefault values are:     0,60,70,75,85,90,97"
    scoring_model: ": Selects the scoring model to be used for classification, select 'old' to use the pre 2.2 scoring model, default = new"
    number_prediction_given: ": The number of points that the Metaxa Extractor prediction is given, default is the same as the number of sequences (-M option)"
    blast_eval: ": The E-value cutoff used in the BLAST search, high numbers may slow down the process, cannot be used with the --blast_score option, default is 1e-5"
    blast_score: ": The score cutoff used in the BLAST search, low numbers may slow down the process, cannot be used with the --blast_eval option, default is to used E-value cutoff, not score"
    blast_word_size: ": The word-size used for the BLAST-based classification, default is 14"
    cpu: ": the number of CPU threads to use, default is 1"
    mega_blast: ": Uses megablast for classification for better speed but less accuracy, off (F) by default"
    plus: ": Runs blast search through blast+ instead of the legacy blastall engine, off (F) by default"
    u_search: ": Runs usearch instead of blast, specify version, off (0) by default"
    u_search_bin: ": Specifies the location of the Usearch binary to be used, default is 'usearch' only"
    u_blast: ": Runs the Ublast algorithm instead of Usearch algorithm, default is on (T)"
    reference: ": A file in FASTA format containing reference sequences to be sent to a separate file in the analysis, default is blank (unused)"
    ref_identity: ": The sequence identity cutoff to be considered a sequence to be derived from a reference entry, default = 99"
    summary: ": Summary of results output, on (T) by default"
    fast_a: ": FASTA-format output of extracted rRNA sequences, on (T) by default"
    split_pairs: ": Outputs the two read pairs separately, off (F) by default"
    table: ": Table format output of sequences containing probable rRNAs, off (F) by default"
    taxonomy: ": Table format output of probable taxonomic origin for sequences, on (T) by default"
    rel_tax: ": Output of probable taxonomic origin for sequences with reliability scores at each rank, off (F) by default"
    tax_level: ": Force Metaxa to classify sequences at a certain taxonomy level, regardless of reliability score, off (0) by default"
    align: ": Outputs alignments of BLAST matches to query in all, uncertain or no cases, requires MAFFT to be installed, default is 'none'"
    guess_species: ": Writes a species guess (which can be pretty far off) to the FASTA definition line, off (F) by default (depreciated option, use --taxonomy instead)"
    not_found: ": Saves a list of non-found entries, off (F) by default"
    silent: ": Supresses printing progress info to stderr, off (F) by default"
    save_raw: ": saves all raw data for searches etc. instead of removing it on finish, off (F) by default"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out_base_names_output = "${in_base_names_output}"
    Directory out_date = "${in_date}"
  }
}