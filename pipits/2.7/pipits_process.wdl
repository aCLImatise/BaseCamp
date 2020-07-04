version 1.0

task PipitsProcess {
  input {
    File? sequences_fasta_typically
    String? directory_output_results
    Float? vsearch_identity_threshold
    Float? rdp_assignment_confidence
    String? sample_list_file
    Boolean? include_unique_seqs
    Boolean? retain_intermediate_files
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
      ~{true="--includeuniqueseqs" false="" include_unique_seqs} \
      ~{true="-r" false="" retain_intermediate_files} \
      ~{true="-v" false="" verbose_mode} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(xms) then ("--Xms " +  '"' + xms + '"') else ""} \
      ~{if defined(x_mx) then ("--Xmx " +  '"' + x_mx + '"') else ""} \
      ~{true="--warcup" false="" war_cup} \
      ~{if defined(unite) then ("--unite " +  '"' + unite + '"') else ""}
  >>>
  parameter_meta {
    sequences_fasta_typically: "[REQUIRED] ITS sequences in FASTA. Typically output from pipits_funits"
    directory_output_results: "[REQUIRED] Directory to output results."
    vsearch_identity_threshold: "VSEARCH - Identity threshold [default: 0.97]"
    rdp_assignment_confidence: "RDP assignment confidence threshold - RDP Classifier confidence threshold for output [default: 0.85]"
    sample_list_file: "[REQUIRED] Sample list file. Generated with PIPITS_GETREADPAIRSLIST prior to PIPITS_PREP"
    include_unique_seqs: "[REQUIRED] PIPITS by default removes unique sequences before clustering. This means you wouldn't have any singletons. If you want singletons, then choose this option. It can take much longer to process."
    retain_intermediate_files: "Retain intermediate files (Beware intermediate files use excessive disk space!)"
    verbose_mode: "Verbose mode"
    number_of_threads: "Number of Threads [default: 1]"
    xms: "The minimum size, in bytes, of the memory allocation pool for JVM"
    x_mx: "The maximum size, in bytes, of the memory allocation pool for JVM"
    war_cup: "Also classify using Warcup database. The most recent warcup db will be downloaded automatically."
    unite: "UNITE db version to be used - PIPITS will download db automaticlly. Leaving this option out will default to the most recent version of UNITE available to PIPITS. Currently 02_02_2019."
  }
}