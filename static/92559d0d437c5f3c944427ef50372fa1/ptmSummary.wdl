version 1.0

task PtmSummary.py {
  input {
    String? threads_to_run
    Boolean? no_log_two
    Boolean? no_median
    Array[String] wp
    Boolean? non_mod_norm
    String? site_file
    String? peptide_file
    Array[String] inference
    String? gene
    String? protein
    String? peptide
    Array[String] quant
    Array[String] mods
    String? site_protein
  }
  command <<<
    ptmSummary.py \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{true="--no-log2" false="" no_log_two} \
      ~{true="--no-median" false="" no_median} \
      ~{if defined(wp) then ("--wp " +  '"' + wp + '"') else ""} \
      ~{true="--non-mod-norm" false="" non_mod_norm} \
      ~{if defined(site_file) then ("--site-file " +  '"' + site_file + '"') else ""} \
      ~{if defined(peptide_file) then ("--peptide-file " +  '"' + peptide_file + '"') else ""} \
      ~{if defined(inference) then ("--inference " +  '"' + inference + '"') else ""} \
      ~{if defined(gene) then ("--gene " +  '"' + gene + '"') else ""} \
      ~{if defined(protein) then ("--protein " +  '"' + protein + '"') else ""} \
      ~{if defined(peptide) then ("--peptide " +  '"' + peptide + '"') else ""} \
      ~{if defined(quant) then ("--quant " +  '"' + quant + '"') else ""} \
      ~{if defined(mods) then ("--mods " +  '"' + mods + '"') else ""} \
      ~{if defined(site_protein) then ("--site-protein " +  '"' + site_protein + '"') else ""}
  >>>
  parameter_meta {
    threads_to_run: "Threads to run"
    no_log_two: "Do not log2 normalize quantification values."
    no_median: "Do not normalize quantification values by the median of the experiment."
    wp: "The whole proteome inference file, if it exists. For multiple replicates, separate by spaces."
    non_mod_norm: "Normalize the data by the non-modified peptides."
    site_file: "The output path for the file with sumamries at the site level."
    peptide_file: "The output path for the file with sumamries at the site and peptide level."
    inference: "The protein inference file (your peptide file with gene/protein annotations). For multiple files, separate by spaces (must be in same order as mods)."
    gene: "The Gene column name"
    protein: "The Protein column name"
    peptide: "The Peptide column name"
    quant: "The name of quantification columns (such as Heavy/Light). Separate multiple columns by spaces"
    mods: "The modifications file (the file with sites, peptides). For multiple files, separate by spaces (must be in same order as inference)."
    site_protein: "The mod file protein column name"
  }
}