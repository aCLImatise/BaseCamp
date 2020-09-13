version 1.0

task Genseq {
  input {
    Int? n_seq
    Int? alphabet_for_sequences
    Boolean? track_prior
    Boolean? gen_prot_prior
    Boolean? gene_hl_two_prior
    Boolean? mean_log_len
    Boolean? sd_log_len
    String? option
    String run_name
  }
  command <<<
    genseq \
      ~{run_name} \
      ~{if defined(n_seq) then ("-Nseq " +  '"' + n_seq + '"') else ""} \
      ~{if defined(alphabet_for_sequences) then ("-a " +  '"' + alphabet_for_sequences + '"') else ""} \
      ~{if (track_prior) then "-trackprior" else ""} \
      ~{if (gen_prot_prior) then "-genprotprior" else ""} \
      ~{if (gene_hl_two_prior) then "-genehl2prior" else ""} \
      ~{if (mean_log_len) then "-meanloglen" else ""} \
      ~{if (sd_log_len) then "-sdloglen" else ""} \
      ~{if defined(option) then ("-option " +  '"' + option + '"') else ""}
  >>>
  parameter_meta {
    n_seq: "number of sequences to generate"
    alphabet_for_sequences: "alphabet for sequences"
    track_prior: "Dirichlet mixture OR"
    gen_prot_prior: "Protein mixture ((null)) OR"
    gene_hl_two_prior: "EHL2 mixture ((null)) OR"
    mean_log_len: "Ave(log length) (  5.415100)"
    sd_log_len: "Std Dev (log length) (  1.036326)"
    option: ""
    run_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}