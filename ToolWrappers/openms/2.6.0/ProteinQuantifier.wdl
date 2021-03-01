version 1.0

task ProteinQuantifier {
  input {
    File? in
    File? protein_groups
    File? design
    File? out
    File? peptide_out
    File? mz_tab
    Int? top
    String? average
    Boolean? include_all
    Boolean? best_charge_and_fraction
    File? greedy_group_resolution
    Boolean? ratios
    Boolean? ratios_sila_c
    File? ini
    Int? threads
    File? write_ini
    Boolean? helphelp
  }
  command <<<
    ProteinQuantifier \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(protein_groups) then ("-protein_groups " +  '"' + protein_groups + '"') else ""} \
      ~{if defined(design) then ("-design " +  '"' + design + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(peptide_out) then ("-peptide_out " +  '"' + peptide_out + '"') else ""} \
      ~{if defined(mz_tab) then ("-mztab " +  '"' + mz_tab + '"') else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if defined(average) then ("-average " +  '"' + average + '"') else ""} \
      ~{if (include_all) then "-include_all" else ""} \
      ~{if (best_charge_and_fraction) then "-best_charge_and_fraction" else ""} \
      ~{if defined(greedy_group_resolution) then ("-greedy_group_resolution " +  '"' + greedy_group_resolution + '"') else ""} \
      ~{if (ratios) then "-ratios" else ""} \
      ~{if (ratios_sila_c) then "-ratiosSILAC" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openms:2.6.0--h4afb90d_0"
  }
  parameter_meta {
    in: "*                        Input file (valid formats: 'featureXML', 'consensusXML', 'idXML')"
    protein_groups: "Protein inference results for the identification runs that were used to annotate the input (e.g. from ProteinProphet via IDFileConverter or Fido via FidoAdapter).\\nInformation about indistinguishable proteins will be used for protein quantification. (valid formats: 'idXML')"
    design: "Input file containing the experimental design (valid formats: 'tsv')"
    out: "Output file for protein abundances (valid formats: 'csv')"
    peptide_out: "Output file for peptide abundances (valid formats: 'csv')"
    mz_tab: "Output file (mzTab) (valid formats: 'mzTab')"
    top: "Calculate protein abundance from this number of proteotypic peptides (most abundant first; '0' for all) (default: '3' min: '0')"
    average: "Averaging method used to compute protein abundances from peptide abundances (default: 'median' valid: 'median', 'mean', 'weighted_mean', 'sum')"
    include_all: "Include results for proteins with fewer proteotypic peptides than indicated by 'top' (no effect if 'top' is 0 or 1)"
    best_charge_and_fraction: "Distinguish between fraction and charge states of a peptide. For peptides, abundances will be reported separately for each fraction and charge;\\nfor proteins, abundances will be computed based only on the most prevalent charge observed of each peptide (over all fractions).\\nBy default, abundances are summed over all charge states."
    greedy_group_resolution: "Pre-process identifications with greedy resolution of shared peptides based on the protein group probabilities. (Only works with an idXML file given as protein_groups parameter). (default: 'false' valid: 'true', 'false')"
    ratios: "Add the log2 ratios of the abundance values to the output. Format: log_2(x_0/x_0) <sep> log_2(x_1/x_0) <sep> log_2(x_2/x_0) ..."
    ratios_sila_c: "Add the log2 ratios for a triple SILAC experiment to the output. Only applicable to consensus maps of exactly three sub-maps. Format: log_2(heavy/light) <sep> log_2(heavy/middle) <sep> log_2(middle/light)"
    ini: "Use the given TOPP INI file"
    threads: "Sets the number of threads allowed to be used by the TOPP tool (default: '1')"
    write_ini: "Writes the default configuration file"
    helphelp: "Shows all options (including advanced)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
    File out_peptide_out = "${in_peptide_out}"
    File out_mz_tab = "${in_mz_tab}"
  }
}