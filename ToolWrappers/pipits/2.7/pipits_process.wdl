version 1.0

task PipitsProcess {
  input {
    File? sequences_fasta_typically
    Directory? directory_output_results
    Float? vsearch_identity_threshold
    Float? rdp_assignment_confidence
    File? sample_list_file
    Boolean? include_unique_seqs
    Boolean? retain_files_space
    Boolean? verbose_mode
    Int? number_of_threads
    Int? xms
    Int? x_mx
    Boolean? war_cup
    String? unite
  }
  command <<<
    pipits_process \
      ~{if defined(sequences_fasta_typically) then ("-i " +  '"' + sequences_fasta_typically + '"') else ""} \
      ~{if defined(directory_output_results) then ("-o " +  '"' + directory_output_results + '"') else ""} \
      ~{if defined(vsearch_identity_threshold) then ("-d " +  '"' + vsearch_identity_threshold + '"') else ""} \
      ~{if defined(rdp_assignment_confidence) then ("-c " +  '"' + rdp_assignment_confidence + '"') else ""} \
      ~{if defined(sample_list_file) then ("-l " +  '"' + sample_list_file + '"') else ""} \
      ~{if (include_unique_seqs) then "--includeuniqueseqs" else ""} \
      ~{if (retain_files_space) then "-r" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(xms) then ("--Xms " +  '"' + xms + '"') else ""} \
      ~{if defined(x_mx) then ("--Xmx " +  '"' + x_mx + '"') else ""} \
      ~{if (war_cup) then "--warcup" else ""} \
      ~{if defined(unite) then ("--unite " +  '"' + unite + '"') else ""}
  >>>
  parameter_meta {
    sequences_fasta_typically: "[REQUIRED] ITS sequences in FASTA. Typically output\\nfrom pipits_funits"
    directory_output_results: "[REQUIRED] Directory to output results."
    vsearch_identity_threshold: "VSEARCH - Identity threshold [default: 0.97]"
    rdp_assignment_confidence: "RDP assignment confidence threshold - RDP Classifier\\nconfidence threshold for output [default: 0.85]"
    sample_list_file: "[REQUIRED] Sample list file. Generated with\\nPIPITS_GETREADPAIRSLIST prior to PIPITS_PREP"
    include_unique_seqs: "[REQUIRED] PIPITS by default removes unique sequences\\nbefore clustering. This means you wouldn't have any\\nsingletons. If you want singletons, then choose this\\noption. It can take much longer to process."
    retain_files_space: "Retain intermediate files (Beware intermediate files\\nuse excessive disk space!)"
    verbose_mode: "Verbose mode"
    number_of_threads: "Number of Threads [default: 1]"
    xms: "The minimum size, in bytes, of the memory allocation\\npool for JVM"
    x_mx: "The maximum size, in bytes, of the memory allocation\\npool for JVM"
    war_cup: "Also classify using Warcup database. The most recent\\nwarcup db will be downloaded automatically."
    unite: "UNITE db version to be used - PIPITS will download db\\nautomaticlly. Leaving this option out will default to\\nthe most recent version of UNITE available to PIPITS.\\nCurrently 02_02_2019.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_results = "${in_directory_output_results}"
  }
}