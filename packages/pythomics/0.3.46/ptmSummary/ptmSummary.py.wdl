version 1.0

task PtmSummarypy {
  input {
    String? threads_to_run
    Boolean? no_log_two
    Boolean? no_median
    Array[String] wp
    Boolean? non_mod_norm
    File? site_file
    File? peptide_file
    Array[String] inference
    String? gene
    String? protein
    String? peptide
    Array[String] quant
    Array[String] mods
    File? site_protein
  }
  command <<<
    ptmSummary_py \
      ~{if defined(threads_to_run) then ("-p " +  '"' + threads_to_run + '"') else ""} \
      ~{if (no_log_two) then "--no-log2" else ""} \
      ~{if (no_median) then "--no-median" else ""} \
      ~{if defined(wp) then ("--wp " +  '"' + wp + '"') else ""} \
      ~{if (non_mod_norm) then "--non-mod-norm" else ""} \
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
    no_median: "Do not normalize quantification values by the median\\nof the experiment."
    wp: "The whole proteome inference file, if it exists. For\\nmultiple replicates, separate by spaces."
    non_mod_norm: "Normalize the data by the non-modified peptides."
    site_file: "The output path for the file with sumamries at the\\nsite level."
    peptide_file: "The output path for the file with sumamries at the\\nsite and peptide level."
    inference: "The protein inference file (your peptide file with\\ngene/protein annotations). For multiple files,\\nseparate by spaces (must be in same order as mods)."
    gene: "The Gene column name"
    protein: "The Protein column name"
    peptide: "The Peptide column name"
    quant: "The name of quantification columns (such as\\nHeavy/Light). Separate multiple columns by spaces"
    mods: "The modifications file (the file with sites,\\npeptides). For multiple files, separate by spaces\\n(must be in same order as inference)."
    site_protein: "The mod file protein column name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_site_file = "${in_site_file}"
    File out_peptide_file = "${in_peptide_file}"
  }
}