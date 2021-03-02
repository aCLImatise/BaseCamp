version 1.0

task Ama {
  input {
    File? s_dbg
    String? motif
    Float? motif_pseudo
    Boolean? norc
    Boolean? scoring
    Boolean? rma
    Boolean? p_values
    Int? gc_bins
    Boolean? cs
    File? o_format
    Directory? output_available_formats_todirectory_give
    Directory? oc
    Boolean? verbosity
    Int? max_seq_length
    Int? last
    File motif_file
    File sequence_file
    File? background_file
  }
  command <<<
    ama \
      ~{motif_file} \
      ~{sequence_file} \
      ~{background_file} \
      ~{if defined(s_dbg) then ("--sdbg " +  '"' + s_dbg + '"') else ""} \
      ~{if defined(motif) then ("--motif " +  '"' + motif + '"') else ""} \
      ~{if defined(motif_pseudo) then ("--motif-pseudo " +  '"' + motif_pseudo + '"') else ""} \
      ~{if (norc) then "--norc" else ""} \
      ~{if (scoring) then "--scoring" else ""} \
      ~{if (rma) then "--rma" else ""} \
      ~{if (p_values) then "--pvalues" else ""} \
      ~{if defined(gc_bins) then ("--gcbins " +  '"' + gc_bins + '"') else ""} \
      ~{if (cs) then "--cs" else ""} \
      ~{if (o_format) then "--o-format" else ""} \
      ~{if defined(output_available_formats_todirectory_give) then ("--o " +  '"' + output_available_formats_todirectory_give + '"') else ""} \
      ~{if defined(oc) then ("--oc " +  '"' + oc + '"') else ""} \
      ~{if (verbosity) then "--verbosity" else ""} \
      ~{if defined(max_seq_length) then ("--max-seq-length " +  '"' + max_seq_length + '"') else ""} \
      ~{if defined(last) then ("--last " +  '"' + last + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0"
  }
  parameter_meta {
    s_dbg: "Use Markov background model of order <order>\\nderived from the sequence to compute its\\nlikelihood ratios;\\noverrides --pvalues, --gcbins and --rma;\\n<background file> is required unless\\n--sdbg is given."
    motif: "Use only the motif identified by <id>.\\nThis option may be repeated."
    motif_pseudo: "The value <float> times the background\\nfrequency is added to the count of each\\nletter when creating the likelihood\\nratio matrix; default: 0.01"
    norc: "Disables the scanning of the reverse\\ncomplement strand for complementable\\nalphabets. The switch is set automatically\\nfor alphabets without complements."
    scoring: "[avg-odds|max-odds]\\nIndicates whether the average or\\nthe maximum odds should be calculated\\ndefault: avg-odds"
    rma: "Scale motif scores to the range [0,1].\\n(Relative Motif Affinity).\\nMotif scores are scaled by the maximum\\nscore achievable by that PWM; default:\\nMotif scores are not normalized."
    p_values: "Print p-value of avg-odds score in cisml\\noutput. Ignored for max-odds scoring;\\ndefault: P-values are not printed."
    gc_bins: "Compensate p-values for GC* content of\\neach sequence using given number of\\nGC range bins. Recommended bins: 41.\\nThis option only works with complementable\\nalphabets with exactly 2 complement pairs;\\ndefault: P-values are based on\\nfrequencies in background file.\\n* GC refers to any complement pair, not\\nactually G and C except for the case of DNA."
    cs: "Enable combining sequences with same\\nidentifier by taking the average score\\nand the Sidac corrected p-value."
    o_format: "[gff|cisml]   Output file format; default: cisml.\\nIgnored if --o or --oc option used,\\nand then CisML (.xml) and GFF (.txt)\\nfiles are both output into the\\nspecified directory."
    output_available_formats_todirectory_give: "Output all available formats to\\n<directory>; give up if <directory>\\nexists."
    oc: "Output all available formats to\\n<directory>; If <directory> exists\\noverwrite contents."
    verbosity: "[1|2|3|4]    Controls amount of screen output;\\ndefault: 2"
    max_seq_length: "Set the maximum length allowed for\\ninput sequences; default: 250000000"
    last: "Use only scores of (up to) last <n>\\nsequence positions to compute AMA."
    motif_file: ""
    sequence_file: ""
    background_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_o_format = "${in_o_format}"
    Directory out_output_available_formats_todirectory_give = "${in_output_available_formats_todirectory_give}"
    Directory out_oc = "${in_oc}"
  }
}