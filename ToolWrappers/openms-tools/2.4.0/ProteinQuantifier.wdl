version 1.0

task ProteinQuantifier {
  input {
    File? in
    File? protein_groups
    File? out
    File? peptide_out
    Int? top
    String? average
    Boolean? include_all
    Boolean? filter_charge
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
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(peptide_out) then ("-peptide_out " +  '"' + peptide_out + '"') else ""} \
      ~{if defined(top) then ("-top " +  '"' + top + '"') else ""} \
      ~{if defined(average) then ("-average " +  '"' + average + '"') else ""} \
      ~{if (include_all) then "-include_all" else ""} \
      ~{if (filter_charge) then "-filter_charge" else ""} \
      ~{if (ratios) then "-ratios" else ""} \
      ~{if (ratios_sila_c) then "-ratiosSILAC" else ""} \
      ~{if defined(ini) then ("-ini " +  '"' + ini + '"') else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(write_ini) then ("-write_ini " +  '"' + write_ini + '"') else ""} \
      ~{if (helphelp) then "--helphelp" else ""}
  >>>
  parameter_meta {
    in: "*               Input file (valid formats: 'featureXML', 'consensusXML', 'idXML')"
    protein_groups: "Protein inference results for the identification runs that were used to annotate the input (e.g. from ProteinProphet via IDFileConverter or Fido via FidoAdapter).\\nInformation about indistinguishable proteins will be used for protein quantification. (valid formats: 'idXML')"
    out: "Output file for protein abundances (valid formats: 'csv')"
    peptide_out: "Output file for peptide abundances (valid formats: 'csv')"
    top: "Calculate protein abundance from this number of proteotypic peptides (most abundant first; '0' for all) (default: '3' min: '0')"
    average: "Averaging method used to compute protein abundances from peptide abundances (default: 'median' valid: 'median', 'mean', 'weighted_mean', 'sum')"
    include_all: "Include results for proteins with fewer proteotypic peptides than indicated by 'top' (no effect if 'top' is 0 or 1)"
    filter_charge: "Distinguish between charge states of a peptide. For peptides, abundances will be reported separately for each charge;\\nfor proteins, abundances will be computed based only on the most prevalent charge of each peptide.\\nBy default, abundances are summed over all charge states."
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
  }
}