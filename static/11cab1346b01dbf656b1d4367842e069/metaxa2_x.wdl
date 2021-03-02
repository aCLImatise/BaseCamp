version 1.0

task Metaxa2X {
  input {
    String? dna_fasta_input
    File? base_names_output
    String? path_directory_hmmprofile
    File? hmm_search
    Directory? date
    String? reset
    String? profile_set_use
    String? specifies_barcoding_gene
    String? mode
    String? domain_evalue_cutoff
    String? domain_score_cutoff
    String? minimal_number_match
    String? selection_priority
    String? search_eval
    String? search_score
    String? allow_single_domain
    String? allow_reorder
    String? complement
    String? cpu
    String? multi_thread
    String? heuristics
    String? summary
    String? graphical
    String? fast_a
    String? table
    String? not_found
    String? truncate
    String? silent
    String? graph_scale
    String? save_raw
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2_x \
      ~{if defined(dna_fasta_input) then ("-i " +  '"' + dna_fasta_input + '"') else ""} \
      ~{if defined(base_names_output) then ("-o " +  '"' + base_names_output + '"') else ""} \
      ~{if defined(path_directory_hmmprofile) then ("-p " +  '"' + path_directory_hmmprofile + '"') else ""} \
      ~{if defined(hmm_search) then ("--hmmsearch " +  '"' + hmm_search + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(reset) then ("--reset " +  '"' + reset + '"') else ""} \
      ~{if defined(profile_set_use) then ("-t " +  '"' + profile_set_use + '"') else ""} \
      ~{if defined(specifies_barcoding_gene) then ("-g " +  '"' + specifies_barcoding_gene + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(domain_evalue_cutoff) then ("-E " +  '"' + domain_evalue_cutoff + '"') else ""} \
      ~{if defined(domain_score_cutoff) then ("-S " +  '"' + domain_score_cutoff + '"') else ""} \
      ~{if defined(minimal_number_match) then ("-N " +  '"' + minimal_number_match + '"') else ""} \
      ~{if defined(selection_priority) then ("--selection_priority " +  '"' + selection_priority + '"') else ""} \
      ~{if defined(search_eval) then ("--search_eval " +  '"' + search_eval + '"') else ""} \
      ~{if defined(search_score) then ("--search_score " +  '"' + search_score + '"') else ""} \
      ~{if defined(allow_single_domain) then ("--allow_single_domain " +  '"' + allow_single_domain + '"') else ""} \
      ~{if defined(allow_reorder) then ("--allow_reorder " +  '"' + allow_reorder + '"') else ""} \
      ~{if defined(complement) then ("--complement " +  '"' + complement + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(multi_thread) then ("--multi_thread " +  '"' + multi_thread + '"') else ""} \
      ~{if defined(heuristics) then ("--heuristics " +  '"' + heuristics + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(graphical) then ("--graphical " +  '"' + graphical + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(not_found) then ("--not_found " +  '"' + not_found + '"') else ""} \
      ~{if defined(truncate) then ("--truncate " +  '"' + truncate + '"') else ""} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(graph_scale) then ("--graph_scale " +  '"' + graph_scale + '"') else ""} \
      ~{if defined(save_raw) then ("--save_raw " +  '"' + save_raw + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dna_fasta_input: ": DNA FASTA input file to investigate"
    base_names_output: ": Base for the names of output file(s)"
    path_directory_hmmprofile: ": A path to a directory of HMM-profile collections representing rRNA conserved regions, default is in the same directory as metaxa itself"
    hmm_search: ": If the hmmsearch has already been performed, this option can be used as the base for the hmmsearch output files, and the hmmsearch step will be skipped. Overrides the -o option, while a DNA FASTA file must still be supplied!"
    date: ": Adds a date and time stamp to the output directory, off (F) by default"
    reset: ": Rebuilds the HMM database. Useful if HMMER has been updated or searches seem to fail mysteriously, off (F) by default"
    profile_set_use: ": Profile set to use for the search (comma-separated), default is all"
    specifies_barcoding_gene: ": Specifies the barcoding gene Metaxa should look for, default is ssu"
    mode: ": Controls the Metaxa2 operating mode, default = metagenome"
    domain_evalue_cutoff: ": Domain E-value cutoff for a sequence to be included in the output, default = 1"
    domain_score_cutoff: ": Domain score cutoff for a sequence to be included in the output, default = 12"
    minimal_number_match: ": The minimal number of domains that must match a sequence before it is included, default = 2"
    selection_priority: ": Selects what will be of highest priority when determining the origin of the sequence, default is sum"
    search_eval: ": The E-value cutoff used in the HMMER search, high numbers may slow down the process, cannot be used with the --search_score option, default is to use score cutoff, not E-value"
    search_score: ": The score cutoff used in the HMMER search, low numbers may slow down the process, cannot be used with the --search_eval option, default = 0"
    allow_single_domain: ": Allow inclusion of sequences that only find a single domain, given that they meet the given E-value and score thresholds, on with parameters 1e-10,0 by default"
    allow_reorder: ": Allows profiles to be in the wrong order on extracted sequences, on (T) by default"
    complement: ": Checks both DNA strands against the database, creating reverse complements, on (T) by default"
    cpu: ": the number of CPU threads to use, default is 1"
    multi_thread: ": Multi-thread the HMMER-search, on (T) if number of CPUs (--cpu option > 1), else off (F) by default"
    heuristics: ": Selects whether to use HMMER's heuristic filtering, on (T) by default"
    summary: ": Summary of results output, on (T) by default"
    graphical: ": 'Graphical' output, on (T) by default"
    fast_a: ": FASTA-format output of extracted rRNA sequences, on (T) by default"
    table: ": Table format output of sequences containing probable rRNAs, off (F) by default"
    not_found: ": Saves a list of non-found entries, off (F) by default"
    truncate: ": Truncates the FASTA output to only contain the putative rRNA sequence found, on (T) by default"
    silent: ": Supresses printing progress info to stderr, off (F) by default"
    graph_scale: ": Sets the scale of the graph output, if value is zero, a percentage view is shown, default = 0"
    save_raw: ": Saves all raw data for searches etc. instead of removing it on finish, off (F) by default"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out_base_names_output = "${in_base_names_output}"
    File out_hmm_search = "${in_hmm_search}"
    Directory out_date = "${in_date}"
  }
}