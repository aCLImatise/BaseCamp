version 1.0

task Ama {
  input {
    String? s_dbg
    String? motif
    Float? motif_pseudo
    Boolean? norc
    Boolean? scoring
    Boolean? rma
    Boolean? p_values
    String? gc_bins
    Boolean? cs
    Boolean? o_format
    Directory? output_formats_give
    Directory? oc
    Boolean? verbosity
    Int? max_seq_length
    Int? last
    String motif_file
    String sequence_file
    String? background_file
  }
  command <<<
    ama \
      ~{motif_file} \
      ~{sequence_file} \
      ~{background_file} \
      ~{if defined(s_dbg) then ("--sdbg " +  '"' + s_dbg + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(motif_pseudo) then ("--motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{true="--norc" false="" norc} \
      ~{true="--scoring" false="" scoring} \
      ~{true="--rma" false="" rma} \
      ~{true="--pvalues" false="" p_values} \
      ~{if defined(gc_bins) then ("--gcbins " +  '"' + gc_bins + '"') else ""} \
      ~{true="--cs" false="" cs} \
      ~{true="--o-format" false="" o_format} \
      ~{if defined(output_formats_give) then ("--o " +  '"' + output_formats_give + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{true="--verbosity" false="" verbosity} \
      ~{if defined(max_seq_length) then ("--max-seq-length " +  '"' + max_seq_length + '"') else ""} \
      ~{if defined(last) then ("--last " +  '"' + last + '"') else ""}
  >>>
  parameter_meta {
    s_dbg: "Use Markov background model of order <order> derived from the sequence to compute its likelihood ratios; overrides --pvalues, --gcbins and --rma; <background file> is required unless --sdbg is given."
    motif: "Use only the motif identified by <id>. This option may be repeated."
    motif_pseudo: "The value <float> times the background frequency is added to the count of each letter when creating the likelihood  ratio matrix; default: 0.01"
    norc: "Disables the scanning of the reverse complement strand for complementable alphabets. The switch is set automatically for alphabets without complements."
    scoring: "[avg-odds|max-odds] Indicates whether the average or  the maximum odds should be calculated default: avg-odds"
    rma: "Scale motif scores to the range [0,1]. (Relative Motif Affinity). Motif scores are scaled by the maximum score achievable by that PWM; default: Motif scores are not normalized."
    p_values: "Print p-value of avg-odds score in cisml output. Ignored for max-odds scoring; default: P-values are not printed."
    gc_bins: "Compensate p-values for GC* content of each sequence using given number of  GC range bins. Recommended bins: 41. This option only works with complementable alphabets with exactly 2 complement pairs; default: P-values are based on frequencies in background file. * GC refers to any complement pair, not actually G and C except for the case of DNA."
    cs: "Enable combining sequences with same identifier by taking the average score and the Sidac corrected p-value."
    o_format: "[gff|cisml]   Output file format; default: cisml. Ignored if --o or --oc option used, and then CisML (.xml) and GFF (.txt) files are both output into the specified directory."
    output_formats_give: "Output all available formats to <directory>; give up if <directory> exists."
    oc: "Output all available formats to <directory>; If <directory> exists overwrite contents."
    verbosity: "[1|2|3|4]    Controls amount of screen output; default: 2"
    max_seq_length: "Set the maximum length allowed for  input sequences; default: 250000000"
    last: "Use only scores of (up to) last <n> sequence positions to compute AMA."
    motif_file: ""
    sequence_file: ""
    background_file: ""
  }
}