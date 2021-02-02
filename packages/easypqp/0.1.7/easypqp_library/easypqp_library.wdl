version 1.0

task EasypqpLibrary {
  input {
    File? out
    File? psm_tsv
    File? peptide_tsv
    File? rt_reference
    String? rt_filter
    File? im_reference
    String? im_filter
    Float? psm_fdr_threshold
    Float? peptide_fdr_threshold
    Float? protein_fdr_threshold
    Float? rt_lowess_fraction
    Float? rt_psm_fdr_threshold
    Float? im_lowess_fraction
    Float? im_psm_fdr_threshold
    Float? pi_zero_lambda
    File? peptide_plot
    File? protein_plot
    Int? min_peptides
    Boolean? proteo_typic
    Boolean? consensus
    Boolean? no_fdr
  }
  command <<<
    easypqp library \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(psm_tsv) then ("--psmtsv " +  '"' + psm_tsv + '"') else ""} \
      ~{if defined(peptide_tsv) then ("--peptidetsv " +  '"' + peptide_tsv + '"') else ""} \
      ~{if defined(rt_reference) then ("--rt_reference " +  '"' + rt_reference + '"') else ""} \
      ~{if defined(rt_filter) then ("--rt_filter " +  '"' + rt_filter + '"') else ""} \
      ~{if defined(im_reference) then ("--im_reference " +  '"' + im_reference + '"') else ""} \
      ~{if defined(im_filter) then ("--im_filter " +  '"' + im_filter + '"') else ""} \
      ~{if defined(psm_fdr_threshold) then ("--psm_fdr_threshold " +  '"' + psm_fdr_threshold + '"') else ""} \
      ~{if defined(peptide_fdr_threshold) then ("--peptide_fdr_threshold " +  '"' + peptide_fdr_threshold + '"') else ""} \
      ~{if defined(protein_fdr_threshold) then ("--protein_fdr_threshold " +  '"' + protein_fdr_threshold + '"') else ""} \
      ~{if defined(rt_lowess_fraction) then ("--rt_lowess_fraction " +  '"' + rt_lowess_fraction + '"') else ""} \
      ~{if defined(rt_psm_fdr_threshold) then ("--rt_psm_fdr_threshold " +  '"' + rt_psm_fdr_threshold + '"') else ""} \
      ~{if defined(im_lowess_fraction) then ("--im_lowess_fraction " +  '"' + im_lowess_fraction + '"') else ""} \
      ~{if defined(im_psm_fdr_threshold) then ("--im_psm_fdr_threshold " +  '"' + im_psm_fdr_threshold + '"') else ""} \
      ~{if defined(pi_zero_lambda) then ("--pi0_lambda " +  '"' + pi_zero_lambda + '"') else ""} \
      ~{if defined(peptide_plot) then ("--peptide_plot " +  '"' + peptide_plot + '"') else ""} \
      ~{if defined(protein_plot) then ("--protein_plot " +  '"' + protein_plot + '"') else ""} \
      ~{if defined(min_peptides) then ("--min_peptides " +  '"' + min_peptides + '"') else ""} \
      ~{if (proteo_typic) then "--proteotypic" else ""} \
      ~{if (consensus) then "--consensus" else ""} \
      ~{if (no_fdr) then "--nofdr" else ""}
  >>>
  parameter_meta {
    out: "Output TSV peptide query parameter file.\\n[required]"
    psm_tsv: "psm.tsv file from Philosopher."
    peptide_tsv: "peptide.tsv file from Philosopher."
    rt_reference: "Optional iRT/CiRT reference file."
    rt_filter: "Optional tag to filter candidate RT\\nreference runs."
    im_reference: "Optional IM reference file."
    im_filter: "Optional tag to filter candidate IM\\nreference runs."
    psm_fdr_threshold: "PSM FDR threshold.  [default: 0.01]"
    peptide_fdr_threshold: "Peptide FDR threshold.  [default: 0.01]"
    protein_fdr_threshold: "Protein FDR threshold.  [default: 0.01]"
    rt_lowess_fraction: "Fraction of data points to use for RT lowess"
    rt_psm_fdr_threshold: "PSM FDR threshold used for RT alignment.\\n[default: 0.001]"
    im_lowess_fraction: "Fraction of data points to use for IM lowess"
    im_psm_fdr_threshold: "PSM FDR threshold used for IM alignment.\\n[default: 0.001]"
    pi_zero_lambda: "...\\nUse non-parametric estimation of p-values.\\nEither use <START END STEPS>, e.g. 0.1, 1.0,\\n0.1 or set to fixed value, e.g. 0.4, 0, 0.\\n[default: 0.1, 0.5, 0.05]"
    peptide_plot: "Output peptide-level PDF report.  [default:\\neasypqp_peptide_report.pdf; required]"
    protein_plot: "Output protein-level PDF report.  [default:\\neasypqp_protein_report.pdf; required]"
    min_peptides: "Minimum peptides required for successful"
    proteo_typic: "/ --no-proteotypic\\nUse only proteotypic, unique, non-shared\\npeptides.  [default: True]"
    consensus: "/ --no-consensus    Generate consensus instead of best replicate"
    no_fdr: "/ --no-fdr-filtering    Do not reassess or filter by FDR, as library\\nwas already provided using customized FDR\\nfiltering.  [default: False]"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}