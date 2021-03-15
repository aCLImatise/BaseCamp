version 1.0

task ITSx {
  input {
    String? dna_fasta_input
    File? base_names_output
    String? path_directory_hmmprofile
    String? stdin
    Directory? date
    String? reset
    String? profile_set_use
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
    String? n_hmmer
    String? summary
    String? graphical
    String? fast_a
    String? preserve
    String? save_regions
    String? anchor
    String? require_anchor
    String? only_full
    String? partial
    String? concat
    String? min_len
    String? positions
    String? table
    String? not_found
    String? detailed_results
    String? truncate
    String? silent
    String? graph_scale
    String? save_raw
    String? temp
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    ITSx \
      ~{if defined(dna_fasta_input) then ("-i " +  '"' + dna_fasta_input + '"') else ""} \
      ~{if defined(base_names_output) then ("-o " +  '"' + base_names_output + '"') else ""} \
      ~{if defined(path_directory_hmmprofile) then ("-p " +  '"' + path_directory_hmmprofile + '"') else ""} \
      ~{if defined(stdin) then ("--stdin " +  '"' + stdin + '"') else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if defined(reset) then ("--reset " +  '"' + reset + '"') else ""} \
      ~{if defined(profile_set_use) then ("-t " +  '"' + profile_set_use + '"') else ""} \
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
      ~{if defined(n_hmmer) then ("--nhmmer " +  '"' + n_hmmer + '"') else ""} \
      ~{if defined(summary) then ("--summary " +  '"' + summary + '"') else ""} \
      ~{if defined(graphical) then ("--graphical " +  '"' + graphical + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(preserve) then ("--preserve " +  '"' + preserve + '"') else ""} \
      ~{if defined(save_regions) then ("--save_regions " +  '"' + save_regions + '"') else ""} \
      ~{if defined(anchor) then ("--anchor " +  '"' + anchor + '"') else ""} \
      ~{if defined(require_anchor) then ("--require_anchor " +  '"' + require_anchor + '"') else ""} \
      ~{if defined(only_full) then ("--only_full " +  '"' + only_full + '"') else ""} \
      ~{if defined(partial) then ("--partial " +  '"' + partial + '"') else ""} \
      ~{if defined(concat) then ("--concat " +  '"' + concat + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(positions) then ("--positions " +  '"' + positions + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(not_found) then ("--not_found " +  '"' + not_found + '"') else ""} \
      ~{if defined(detailed_results) then ("--detailed_results " +  '"' + detailed_results + '"') else ""} \
      ~{if defined(truncate) then ("--truncate " +  '"' + truncate + '"') else ""} \
      ~{if defined(silent) then ("--silent " +  '"' + silent + '"') else ""} \
      ~{if defined(graph_scale) then ("--graph_scale " +  '"' + graph_scale + '"') else ""} \
      ~{if defined(save_raw) then ("--save_raw " +  '"' + save_raw + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/itsx:1.1.3--0"
  }
  parameter_meta {
    dna_fasta_input: ": DNA FASTA input file to investigate"
    base_names_output: ": Base for the names of output file(s)"
    path_directory_hmmprofile: ": A path to a directory of HMM-profile collections representing ITS conserved regions, default is in the same directory as ITSx itself"
    stdin: ": Use input from standard input instead of an input file, off (F) by default"
    date: ": Adds a date and time stamp to the output directory, off (F) by default"
    reset: ": Re-creates the HMM-database before ITSx is run, off (F) by default"
    profile_set_use: ": Profile set to use for the search, see the User's Guide (comma-separated), default is all"
    domain_evalue_cutoff: ": Domain E-value cutoff for a sequence to be included in the output, default = 1e-5"
    domain_score_cutoff: ": Domain score cutoff for a sequence to be included in the output, default = 0"
    minimal_number_match: ": The minimal number of domains that must match a sequence before it is included, default = 2"
    selection_priority: ": Selects what will be of highest priority when determining the origin of the sequence, default is score"
    search_eval: ": The E-value cutoff used in the HMMER search, high numbers may slow down the process, cannot be used with the --search_score option, default is to use score cutoff, not E-value"
    search_score: ": The score cutoff used in the HMMER search, low numbers may slow down the process, cannot be used with the --search_eval option, default = 0"
    allow_single_domain: ": Allow inclusion of sequences that only find a single domain, given that they meet the given E-value and score thresholds, on with parameters 1e-9,0 by default"
    allow_reorder: ": Allows profiles to be in the wrong order on extracted sequences, off (F) by default"
    complement: ": Checks both DNA strands against the database, creating reverse complements, on (T) by default"
    cpu: ": the number of CPU threads to use, default is 1"
    multi_thread: ": Multi-thread the HMMER-search, on (T) if number of CPUs (--cpu option > 1), else off (F) by default"
    heuristics: ": Selects whether to use HMMER's heuristic filtering, off (F) by default"
    n_hmmer: ": Selects whether to use nhmmer instead of hmmsearch for HMMER searches, off (F) by default"
    summary: ": Summary of results output, on (T) by default"
    graphical: ": 'Graphical' output, on (T) by default"
    fast_a: ": FASTA-format output of extracted ITS sequences, on (T) by default"
    preserve: ": Preserve sequence headers in input file instead of printing out ITSx headers, off (F) by default"
    save_regions: ": A comma separated list of regions to output separate FASTA files for, 'ITS1,ITS2' by default"
    anchor: ": Saves an additional number of bases before and after each extracted region. If set to 'HMM' all bases matching the corresponding HMM will be output, default = 0"
    require_anchor: ": Requires the complete anchor to found in order to be included in the output sequences (see --anchor above). Cannot be used together with the --anchor option, default = 0"
    only_full: ": If true, output is limited to full-length regions, off (F) by default"
    partial: ": Saves additional FASTA-files for full and partial ITS sequences longer than the specified cutoff, default = 0 (off)"
    concat: ": Saves a FASTA-file with concatenated ITS sequences (with 5.8S removed), off (F) by default"
    min_len: ": Minimum length the ITS regions must be to be outputted in the concatenated file (see above), default = 0"
    positions: ": Table format output containing the positions ITS sequences were found in, on (T) by default"
    table: ": Table format output of sequences containing probable ITS sequences, off (F) by default"
    not_found: ": Saves a list of non-found entries, on (T) by default"
    detailed_results: ": Saves a tab-separated list of all results, off (F) by default"
    truncate: ": Truncates the FASTA output to only contain the actual ITS sequences found, on (T) by default"
    silent: ": Supresses printing progress info to stderr, off (F) by default"
    graph_scale: ": Sets the scale of the graph output, if value is zero, a percentage view is shown, default = 0"
    save_raw: ": Saves all raw data for searches etc. instead of removing it on finish, off (F) by default"
    temp: ": Custom directory to put the temporary files in"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of ITSx"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    File out_base_names_output = "${in_base_names_output}"
    Directory out_date = "${in_date}"
  }
}