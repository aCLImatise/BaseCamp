version 1.0

task Metaxa2Dbb {
  input {
    String? dna_fasta_file_containing_reference_sequences_single
    Directory? directory_name_output
    String? gene_name_database
    String? use_hmms_computing
    String? taxonomy_file_containing
    String? id_sequence_used
    String? auto_rep
    String? cpu
    String? save_raw
    String? plus
    String? dna_fasta_file_containing_archaeal_sequences
    String? dna_fasta_file_containing_bacterial_sequences
    String? dna_fasta_file_containing_chloroplast_sequences
    String? dna_fasta_file_containing_eukaryote_sequences
    String? dna_fasta_file_containing_mitochondrial_reference_sequences
    String? dna_fasta_file_containing_metazoan_mitochondrial_sequences
    String? other
    String? full_length
    String? conservation_score_cutoff
    String? noise_cutoff_minimal
    String? autodetect_conservation_score
    String? minimal_conserved_proportion
    String? lookahead_length_number
    String? minimal_conserved_length
    String? single_profile
    String? mode
    String? de_replicate
    String? filter_uncultured
    String? filter_level
    String? correct_taxonomy
    String? cutoffs
    String? sample
    String? evaluate
    String? iterations
    String? test_sets
    String? db
    Boolean? help
    Boolean? bugs
    Boolean? license
  }
  command <<<
    metaxa2_dbb \
      ~{if defined(dna_fasta_file_containing_reference_sequences_single) then ("-i " +  '"' + dna_fasta_file_containing_reference_sequences_single + '"') else ""} \
      ~{if defined(directory_name_output) then ("-o " +  '"' + directory_name_output + '"') else ""} \
      ~{if defined(gene_name_database) then ("-g " +  '"' + gene_name_database + '"') else ""} \
      ~{if defined(use_hmms_computing) then ("-p " +  '"' + use_hmms_computing + '"') else ""} \
      ~{if defined(taxonomy_file_containing) then ("-t " +  '"' + taxonomy_file_containing + '"') else ""} \
      ~{if defined(id_sequence_used) then ("-r " +  '"' + id_sequence_used + '"') else ""} \
      ~{if defined(auto_rep) then ("--auto_rep " +  '"' + auto_rep + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(save_raw) then ("--save_raw " +  '"' + save_raw + '"') else ""} \
      ~{if defined(plus) then ("--plus " +  '"' + plus + '"') else ""} \
      ~{if defined(dna_fasta_file_containing_archaeal_sequences) then ("-a " +  '"' + dna_fasta_file_containing_archaeal_sequences + '"') else ""} \
      ~{if defined(dna_fasta_file_containing_bacterial_sequences) then ("-b " +  '"' + dna_fasta_file_containing_bacterial_sequences + '"') else ""} \
      ~{if defined(dna_fasta_file_containing_chloroplast_sequences) then ("-c " +  '"' + dna_fasta_file_containing_chloroplast_sequences + '"') else ""} \
      ~{if defined(dna_fasta_file_containing_eukaryote_sequences) then ("-e " +  '"' + dna_fasta_file_containing_eukaryote_sequences + '"') else ""} \
      ~{if defined(dna_fasta_file_containing_mitochondrial_reference_sequences) then ("-m " +  '"' + dna_fasta_file_containing_mitochondrial_reference_sequences + '"') else ""} \
      ~{if defined(dna_fasta_file_containing_metazoan_mitochondrial_sequences) then ("-n " +  '"' + dna_fasta_file_containing_metazoan_mitochondrial_sequences + '"') else ""} \
      ~{if defined(other) then ("--other " +  '"' + other + '"') else ""} \
      ~{if defined(full_length) then ("--full_length " +  '"' + full_length + '"') else ""} \
      ~{if defined(conservation_score_cutoff) then ("-C " +  '"' + conservation_score_cutoff + '"') else ""} \
      ~{if defined(noise_cutoff_minimal) then ("-N " +  '"' + noise_cutoff_minimal + '"') else ""} \
      ~{if defined(autodetect_conservation_score) then ("-A " +  '"' + autodetect_conservation_score + '"') else ""} \
      ~{if defined(minimal_conserved_proportion) then ("-P " +  '"' + minimal_conserved_proportion + '"') else ""} \
      ~{if defined(lookahead_length_number) then ("-L " +  '"' + lookahead_length_number + '"') else ""} \
      ~{if defined(minimal_conserved_length) then ("-M " +  '"' + minimal_conserved_length + '"') else ""} \
      ~{if defined(single_profile) then ("--single_profile " +  '"' + single_profile + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(de_replicate) then ("--dereplicate " +  '"' + de_replicate + '"') else ""} \
      ~{if defined(filter_uncultured) then ("--filter_uncultured " +  '"' + filter_uncultured + '"') else ""} \
      ~{if defined(filter_level) then ("--filter_level " +  '"' + filter_level + '"') else ""} \
      ~{if defined(correct_taxonomy) then ("--correct_taxonomy " +  '"' + correct_taxonomy + '"') else ""} \
      ~{if defined(cutoffs) then ("--cutoffs " +  '"' + cutoffs + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(evaluate) then ("--evaluate " +  '"' + evaluate + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(test_sets) then ("--test_sets " +  '"' + test_sets + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if (bugs) then "--bugs" else ""} \
      ~{if (license) then "--license" else ""}
  >>>
  parameter_meta {
    dna_fasta_file_containing_reference_sequences_single: ": DNA FASTA file containing the reference sequences of a single gene to be used for classification (overrides specific input options below)"
    directory_name_output: ": Directory name for the output files"
    gene_name_database: ": Gene name for the database"
    use_hmms_computing: ": Use HMMs from the specified directory instead of computing new ones (i.e. only build a new classification database), not used by default"
    taxonomy_file_containing: ": Taxonomy file containing taxonomic information to be parsed in any of the following formats:\\nMetaxa2, FASTA, ASN1, NCBI XML, INSD XML"
    id_sequence_used: ": ID of the sequence that should be used as the representative sequence of the gene\\nif blank, the first sequence in the input file is used"
    auto_rep: ": Choose a reference sequence automatically (requires Usearch to be installed), on (T) by default"
    cpu: ": Number of CPUs to use (will be passed on to other programs), default = 1"
    save_raw: ": Keep intermediate files after the program finishes, off (F) by default"
    plus: ": Use BLAST+ instead of legacy BLAST, off (F) by default"
    dna_fasta_file_containing_archaeal_sequences: ": DNA FASTA file containing archaeal reference sequences to be used for classification (cannot be combined with the -i option)"
    dna_fasta_file_containing_bacterial_sequences: ": DNA FASTA file containing bacterial reference sequences to be used for classification (cannot be combined with the -i option)"
    dna_fasta_file_containing_chloroplast_sequences: ": DNA FASTA file containing chloroplast reference sequences to be used for classification (cannot be combined with the -i option)"
    dna_fasta_file_containing_eukaryote_sequences: ": DNA FASTA file containing eukaryote reference sequences to be used for classification (cannot be combined with the -i option)"
    dna_fasta_file_containing_mitochondrial_reference_sequences: ": DNA FASTA file containing mitochondrial reference sequences to be used for classification (cannot be combined with the -i option)"
    dna_fasta_file_containing_metazoan_mitochondrial_sequences: ": DNA FASTA file containing metazoan mitochondrial reference sequences to be used for classification (cannot be combined with the -i option)"
    other: ": DNA FASTA file containing reference sequences of other origins to be used for classification (cannot be combined with the -i option)"
    full_length: ": number of basepairs to use for full-length definition (set to zero to disable full-length extraction), default = 100"
    conservation_score_cutoff: ": Conservation score cutoff, 4 by default, not used unless -A is set to false (F)"
    noise_cutoff_minimal: ": Noise cutoff (minimal proportion of sequences required to be considered at each position). A number between 0 and 1, 0.1 by default"
    autodetect_conservation_score: ": Auto-detect conservation score cutoff, on (T) by default"
    minimal_conserved_proportion: ": Minimal conserved proportion of the alignment (until a lower conservation cutoff is considered), 0.6 by default"
    lookahead_length_number: ": Look-ahead length (the number of residues to consider when determining the start and end of conserved regions), 5 by default"
    minimal_conserved_length: ": Minimal conserved region length, 20 by default"
    single_profile: ": Build only one single HMM for the entire alignment from the input sequences, off (F) by default"
    mode: ": Selects the mode in which the profile database is built, default is divergent"
    de_replicate: ": Will dereplicate the input data using Usearch before building the database, using the specified idenity threshold, off (F) by default"
    filter_uncultured: ": Will try to filter out sequences that are derived from uncultured species, off (F) by default"
    filter_level: ": Will filter out sequences with taxonomic information lower than the specified level, 0 by default"
    correct_taxonomy: ": Will try to correct the taxonomic information at order, family, genus and species level, off (F) by default"
    cutoffs: ": A string of number defining the cutoffs at different taxonomic levels. Will turn off automatic calculation of cutoffs. If blank, cutoffs are determined automatically, default is blank (off)"
    sample: ": The number of sequences to aim to investigate when determining taxonomic cutoffs, 1000 by default"
    evaluate: ": Statistically evaluate the performance of the database built. This increases the time requirement for the process dramatically, off (F) by default"
    iterations: ": Number of iterations for the statistical evaluation, 10 by default"
    test_sets: ": Proportion of sequences to leave out for testing. Several values can be specified, separated by commas, 0.1 by default"
    db: ": Skips building the database, and only runs the evaluation on the specified database, not used by default"
    help: ": displays this help message"
    bugs: ": displays the bug fixes and known bugs in this version of Metaxa"
    license: ": displays licensing information"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}