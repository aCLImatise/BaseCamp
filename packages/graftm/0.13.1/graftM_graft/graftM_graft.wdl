version 1.0

task GraftMGraft {
  input {
    Array[String] forward
    String? reverse
    Array[String] interleaved
    File? graft_m_package
    Int? threads
    String? input_sequence_type
    Int? filter_minimum
    Float? evalue
    Boolean? search_and_align_only
    Boolean? search_only
    Boolean? e_uk_check
    Boolean? search_method
    File? decoy_database
    String? maximum_range
    Array[String] expand_search_contigs
    Array[String] search_hmm_files
    File? search_hmm_list_file
    File? search_diamond_file
    File? aln_hmm_file
    String? assignment_method
    Float? placements_cut_off
    Boolean? resolve_placements
    Boolean? no_merge_reads
    File? e_uk_hmm_file
    Int? min_orf_length
    Int? restrict_read_length
    Int? verbosity
    File? log
    Directory? output_directory
    Directory? force
    Int? max_samples_for_krona
  }
  command <<<
    graftM graft \
      ~{if defined(forward) then ("--forward " +  '"' + forward + '"') else ""} \
      ~{if defined(reverse) then ("--reverse " +  '"' + reverse + '"') else ""} \
      ~{if defined(interleaved) then ("--interleaved " +  '"' + interleaved + '"') else ""} \
      ~{if defined(graft_m_package) then ("--graftm_package " +  '"' + graft_m_package + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(input_sequence_type) then ("--input_sequence_type " +  '"' + input_sequence_type + '"') else ""} \
      ~{if defined(filter_minimum) then ("--filter_minimum " +  '"' + filter_minimum + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if (search_and_align_only) then "--search_and_align_only" else ""} \
      ~{if (search_only) then "--search_only" else ""} \
      ~{if (e_uk_check) then "--euk_check" else ""} \
      ~{if (search_method) then "--search_method" else ""} \
      ~{if defined(decoy_database) then ("--decoy_database " +  '"' + decoy_database + '"') else ""} \
      ~{if defined(maximum_range) then ("--maximum_range " +  '"' + maximum_range + '"') else ""} \
      ~{if defined(expand_search_contigs) then ("--expand_search_contigs " +  '"' + expand_search_contigs + '"') else ""} \
      ~{if defined(search_hmm_files) then ("--search_hmm_files " +  '"' + search_hmm_files + '"') else ""} \
      ~{if defined(search_hmm_list_file) then ("--search_hmm_list_file " +  '"' + search_hmm_list_file + '"') else ""} \
      ~{if defined(search_diamond_file) then ("--search_diamond_file " +  '"' + search_diamond_file + '"') else ""} \
      ~{if defined(aln_hmm_file) then ("--aln_hmm_file " +  '"' + aln_hmm_file + '"') else ""} \
      ~{if defined(assignment_method) then ("--assignment_method " +  '"' + assignment_method + '"') else ""} \
      ~{if defined(placements_cut_off) then ("--placements_cutoff " +  '"' + placements_cut_off + '"') else ""} \
      ~{if (resolve_placements) then "--resolve_placements" else ""} \
      ~{if (no_merge_reads) then "--no_merge_reads" else ""} \
      ~{if defined(e_uk_hmm_file) then ("--euk_hmm_file " +  '"' + e_uk_hmm_file + '"') else ""} \
      ~{if defined(min_orf_length) then ("--min_orf_length " +  '"' + min_orf_length + '"') else ""} \
      ~{if defined(restrict_read_length) then ("--restrict_read_length " +  '"' + restrict_read_length + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(output_directory) then ("--output_directory " +  '"' + output_directory + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(max_samples_for_krona) then ("--max_samples_for_krona " +  '"' + max_samples_for_krona + '"') else ""}
  >>>
  parameter_meta {
    forward: "Path to the reads you wish to run through GraftM, either in fasta (.fa) or fastq (.fq), optionally gzip-compressed (.gz). If you would like to run multiple samples at once, provide a space separated list of the file paths"
    reverse: "read [reverse read ...]\\nIf you have paired end data, you may wish to provide the reverse reads. If you are running more than one dataset, please ensure that the order of the files passed to the --forward and --reverse flags is consistent."
    interleaved: "Path to the reads you wish to run through GraftM, either in fasta (.fa) or fastq (.fq), optionally gzip-compressed (.gz). If you would like to run multiple samples at once, provide a space separated list of the file paths"
    graft_m_package: "Path to the gene specific GraftM package (gpkg)."
    threads: "The number of threads to be used when running hmmsearch and pplacer (default: 5)"
    input_sequence_type: "Specify whether the input sequence is \\\"nucleotide\\\" or \\\"aminoacid\\\" sequence data (default: guess)"
    filter_minimum: "Minimum number of positions that must be aligned for a sequence to be placed in the phylogenetic tree (default: 95bp for nucleotide packages, 30 aa for protein packages)"
    evalue: "Specify the evalue cutoff for the hmmsearch, if you would like to use a cutoff different to the default or the trusted cutoff (TC) within the HMM. (default: 1e-5)"
    search_and_align_only: "Stop GraftM running after reads have been identified and aligned (i.e. no placement step)"
    search_only: "Stop GraftM running after reads have been identified (i.e. no alignment or placement steps)"
    e_uk_check: "Cross check identified reads using an 18S specific HMM to help filter out eukaryotic ribosomal reads"
    search_method: "{hmmsearch,diamond,hmmsearch+diamond}\\nSearch method (default: hmmsearch)"
    decoy_database: "Path to a diamond database. Sequences with better hits to these proteins will be excluded."
    maximum_range: "Maximum range to use when searching for potentially linked reads (when searching contigs)"
    expand_search_contigs: "Provide an assembly of the sample being searched. This assembly will initially be searched for full length genes, from which a sample specific HMM model will be created and used in the search step of graftM."
    search_hmm_files: "Specify a list of paths to custom HMM(s) to search the data with."
    search_hmm_list_file: "a file containing a list of paths to custom HMM(s) to search the data with (one per line)."
    search_diamond_file: "Specify a DIAMOND database with which to search/classify the reads."
    aln_hmm_file: "Reads will be aligned to this HMM after identification. N.B. This option can only be used if no placement is required."
    assignment_method: "Taxonomic assignment method, either pplacer (phylogenetic) or DIAMOND (pairwise). default = pplacer (default: pplacer)"
    placements_cut_off: "This flag allows you to change the likelihood cutoff for phylogenetic placement of reads. (default: 0.75)"
    resolve_placements: "Ignore the placements cutoff and simply use the best placement assigned to the read."
    no_merge_reads: "When this flag is specified, the alignment of the forward and reverse reads will not be merged before placement. If paired reads are provided, pair with the most confident placement will be used for classification."
    e_uk_hmm_file: "Use this flag to specify the HMM that is used in the Eukaryotic contamination screen"
    min_orf_length: "Minimum number of nucleotides in an open reading frame (default: 96)"
    restrict_read_length: "Only use this many base pairs at the start of each sequence searched"
    verbosity: "1 - 5, 1 being silent, 5 being noisy indeed. (default: 4)"
    log: "Output logging information to this file"
    output_directory: "Output directory name (default: GraftM_output)"
    force: "Force overwrite the output directory if one already exists with the same name"
    max_samples_for_krona: "If the number of samples is greater than this, do not output KRONA diagram (default: 100)"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
    Directory out_output_directory = "${in_output_directory}"
    Directory out_force = "${in_force}"
  }
}