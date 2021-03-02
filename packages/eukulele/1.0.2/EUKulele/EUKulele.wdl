version 1.0

task EUKulele {
  input {
    File? config_file
    Directory? use_salmon_counts
    File? names_to_reads
    String? database
    Directory? output_dir
    Directory? sample_dir
    Directory? reference_dir
    File? ref_fast_a
    File? alignment_choice
    String? individual_or_summary
    Array[String] individual
    Array[String] taxonomy_organisms
    File? trans_decoder_or_f_size
    Boolean? run_trans_decoder
    Boolean? test
    Boolean? mets_or_mags
    String subroutine
  }
  command <<<
    EUKulele \
      ~{subroutine} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""} \
      ~{if defined(use_salmon_counts) then ("--use_salmon_counts " +  '"' + use_salmon_counts + '"') else ""} \
      ~{if defined(names_to_reads) then ("--names_to_reads " +  '"' + names_to_reads + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(output_dir) then ("--output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(sample_dir) then ("--sample_dir " +  '"' + sample_dir + '"') else ""} \
      ~{if defined(reference_dir) then ("--reference_dir " +  '"' + reference_dir + '"') else ""} \
      ~{if defined(ref_fast_a) then ("--ref_fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(alignment_choice) then ("--alignment_choice " +  '"' + alignment_choice + '"') else ""} \
      ~{if defined(individual_or_summary) then ("--individual_or_summary " +  '"' + individual_or_summary + '"') else ""} \
      ~{if defined(individual) then ("--individual " +  '"' + individual + '"') else ""} \
      ~{if defined(taxonomy_organisms) then ("--taxonomy_organisms " +  '"' + taxonomy_organisms + '"') else ""} \
      ~{if defined(trans_decoder_or_f_size) then ("--transdecoder_orfsize " +  '"' + trans_decoder_or_f_size + '"') else ""} \
      ~{if (run_trans_decoder) then "--run_transdecoder" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (mets_or_mags) then "--mets_or_mags" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/eukulele:1.0.2--pyhcb32578_1"
  }
  parameter_meta {
    config_file: "The percentage of the total available memory which\\nshould be targeted for use by processes."
    use_salmon_counts: "Salmon directory is required if use_salmon_counts is\\ntrue."
    names_to_reads: "A file to be created or used if it exists that relates\\ntranscript names to salmon counts from the salmon\\ndirectory."
    database: "The name of the database to be used to assess the\\nreads."
    output_dir: "Folder where the output will be written."
    sample_dir: "Folder where the input data is located (the protein or\\npeptide files to be assessed)."
    reference_dir: "Folder containing the reference files for the chosen\\ndatabase."
    ref_fast_a: "Either a file in the reference directory where the\\nfasta file for the database is located, or a directory\\ncontaining multiple fasta files that constitute the\\ndatabase."
    alignment_choice: "If specified, the following two arguments ('--\\norganisms' and '--taxonomy_organisms' are overwritten\\nby the two columns of this tab-separated file."
    individual_or_summary: "These arguments are used if 'individual' is specified."
    individual: "List of organisms to check BUSCO completeness on."
    taxonomy_organisms: "Taxonomic level of organisms specified in organisms\\ntag."
    trans_decoder_or_f_size: "Whether to create FASTA files containing ID'd\\ntranscripts during BUSCO analysis."
    run_trans_decoder: "Whether TransDecoder should be run on\\nmetatranscriptomic samples. Otherwise, BLASTp is run\\nif protein translated samples are providedotherwise\\nBLASTx is run on nucleotide samples."
    test: "Whether we're just running a test and should not\\nexecute downloads.\\n"
    mets_or_mags: ""
    subroutine: "Choice of subroutine to run."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_dir = "${in_output_dir}"
  }
}