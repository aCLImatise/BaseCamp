version 1.0

task CdhitClustersh {
  input {
    File? file_fasta_format
    Int? threshold_cluster_default
    String? command_default_cdhitest
    Int? available_memory_mbyte
    File? name
    Int? difference_cutoff_default
    String? name_optional_unset
    String? psicdhit_instead_cdhit
    Int? only_circular_sequences
    Int? only_gobal_identity
    String? only_choose_blastn
    Int? of_threads
    String? usage_message
  }
  command <<<
    cdhit_cluster_sh \
      ~{if defined(file_fasta_format) then ("-i " +  '"' + file_fasta_format + '"') else ""} \
      ~{if defined(threshold_cluster_default) then ("-c " +  '"' + threshold_cluster_default + '"') else ""} \
      ~{if defined(command_default_cdhitest) then ("-H " +  '"' + command_default_cdhitest + '"') else ""} \
      ~{if defined(available_memory_mbyte) then ("-M " +  '"' + available_memory_mbyte + '"') else ""} \
      ~{if defined(name) then ("-n " +  '"' + name + '"') else ""} \
      ~{if defined(difference_cutoff_default) then ("-s " +  '"' + difference_cutoff_default + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(psicdhit_instead_cdhit) then ("-p " +  '"' + psicdhit_instead_cdhit + '"') else ""} \
      ~{if defined(only_circular_sequences) then ("-C " +  '"' + only_circular_sequences + '"') else ""} \
      ~{if defined(only_gobal_identity) then ("-G " +  '"' + only_gobal_identity + '"') else ""} \
      ~{if defined(only_choose_blastn) then ("-b " +  '"' + only_choose_blastn + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    file_fasta_format: "file in FASTA format"
    threshold_cluster_default: "threshold to cluster, default 80"
    command_default_cdhitest: "command, default cd-hit-est"
    available_memory_mbyte: "available memory (Mbyte), default 400"
    name: "name"
    difference_cutoff_default: "difference cutoff, default 0.8"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    psicdhit_instead_cdhit: "psi-cd-hit instead of cd-hit"
    only_circular_sequences: "only: circular sequences, default 1. If set to 0 sequence is assumed lineal"
    only_gobal_identity: "only: gobal identity, -G 0 only takes the first local alignment for clustering"
    only_choose_blastn: "only: choose blast program, default blastn"
    of_threads: "of threads"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}