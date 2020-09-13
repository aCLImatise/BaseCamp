version 1.0

task RNAlienbin {
  input {
    File? input_fast_a_file_path
    File? input_alignment_file_path
    File? output_path
    Int? input_taxid
    Int? input_evalue_cut_off
    File? input_blast_database
    Boolean? length_filter
    Boolean? coverage_filter
    Boolean? single_hit_per_tax
    Boolean? blast_soft_masking
    String? input_query_selection_method
    Int? input_query_number
    Int? threads
    String? taxonomy_restriction
    String? session_identifica_tor
    Boolean? perform_evaluation
    Boolean? check_setup
    File? taxonomy_dump_path
    Boolean? offline_mode
    Boolean? numeric_version
    Boolean? verbose
    Boolean? quiet
    String organism
    String kingdom
  }
  command <<<
    RNAlien_bin \
      ~{organism} \
      ~{kingdom} \
      ~{if defined(input_fast_a_file_path) then ("--inputfastafilepath " +  '"' + input_fast_a_file_path + '"') else ""} \
      ~{if defined(input_alignment_file_path) then ("--inputalignmentfilepath " +  '"' + input_alignment_file_path + '"') else ""} \
      ~{if defined(output_path) then ("--outputpath " +  '"' + output_path + '"') else ""} \
      ~{if defined(input_taxid) then ("--inputtaxid " +  '"' + input_taxid + '"') else ""} \
      ~{if defined(input_evalue_cut_off) then ("--inputevaluecutoff " +  '"' + input_evalue_cut_off + '"') else ""} \
      ~{if defined(input_blast_database) then ("--inputblastdatabase " +  '"' + input_blast_database + '"') else ""} \
      ~{if (length_filter) then "--lengthfilter" else ""} \
      ~{if (coverage_filter) then "--coveragefilter" else ""} \
      ~{if (single_hit_per_tax) then "--singlehitpertax" else ""} \
      ~{if (blast_soft_masking) then "--blastsoftmasking" else ""} \
      ~{if defined(input_query_selection_method) then ("--inputqueryselectionmethod " +  '"' + input_query_selection_method + '"') else ""} \
      ~{if defined(input_query_number) then ("--inputquerynumber " +  '"' + input_query_number + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(taxonomy_restriction) then ("--taxonomyrestriction " +  '"' + taxonomy_restriction + '"') else ""} \
      ~{if defined(session_identifica_tor) then ("--sessionidentificator " +  '"' + session_identifica_tor + '"') else ""} \
      ~{if (perform_evaluation) then "--performevaluation" else ""} \
      ~{if (check_setup) then "--checksetup" else ""} \
      ~{if defined(taxonomy_dump_path) then ("--taxonomydumppath " +  '"' + taxonomy_dump_path + '"') else ""} \
      ~{if (offline_mode) then "--offlinemode" else ""} \
      ~{if (numeric_version) then "--numeric-version" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    input_fast_a_file_path: "Path to input fasta file"
    input_alignment_file_path: "Path to input alignment file"
    output_path: "Path to output directory. Default:\\ncurrent working directory"
    input_taxid: "NCBI taxonomy ID number of input RNA"
    input_evalue_cut_off: "Evalue cutoff for cmsearch filtering.\\nDefault: 0.001"
    input_blast_database: "Specify name of blast database to use,\\nin offline mode the filepath to the\\nblast database (/home/user/nt_v5).\\nDefault: nt"
    length_filter: "Filter blast hits per genomic length.\\nDefault: True"
    coverage_filter: "Filter blast hits by coverage of at\\nleast 80%. Default: True"
    single_hit_per_tax: "Only the best blast hit per taxonomic\\nentry is considered. Default: False"
    blast_soft_masking: "Toggles blast query softmasking,\\nmeaning masking of non-conserved regions\\non the query. Default: False"
    input_query_selection_method: "Method for selection of queries\\n(filtering,clustering). Default:\\nfiltering"
    input_query_number: "Number of queries used for candidate\\nsearch. Default: 5"
    threads: "Number of available cpu slots/cores.\\nDefault: 1"
    taxonomy_restriction: "Restrict search space to taxonomic"
    session_identifica_tor: "Optional session id that is used\\ninstead of automatically generated one."
    perform_evaluation: "Perform evaluation step. Default: True"
    check_setup: "Just prints installed tool versions\\nand performs connection check. Default:\\nFalse"
    taxonomy_dump_path: "Path to NCBI taxonomy dump directory."
    offline_mode: "Uses locally installed blast and\\ndatabases. Default: False"
    numeric_version: "Print just the version number"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
    organism: "-z --inputnscicutoff=NUM             Only candidate sequences with a"
    kingdom: "(bacteria,archea,eukaryia,cellularorganisms,viruses)."
  }
  output {
    File out_stdout = stdout()
    File out_output_path = "${in_output_path}"
  }
}