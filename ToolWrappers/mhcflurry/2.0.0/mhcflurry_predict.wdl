version 1.0

task Mhcflurrypredict {
  input {
    Boolean? list_supported_alleles
    Boolean? list_supported_peptide_lengths
    Array[String] alleles
    Array[String] peptides
    String? allele_column
    String? peptide_column
    String? n_flank_column
    String? c_flank_column
    Boolean? no_throw
    String? out
    String? prediction_column_prefix
    String? output_delimiter
    Boolean? no_affinity_percentile
    Boolean? always_include_best_allele
    Directory? models
    Boolean? affinity_only
    Boolean? no_flanking
    String input_dot_csv
  }
  command <<<
    mhcflurry_predict \
      ~{input_dot_csv} \
      ~{if (list_supported_alleles) then "--list-supported-alleles" else ""} \
      ~{if (list_supported_peptide_lengths) then "--list-supported-peptide-lengths" else ""} \
      ~{if defined(alleles) then ("--alleles " +  '"' + alleles + '"') else ""} \
      ~{if defined(peptides) then ("--peptides " +  '"' + peptides + '"') else ""} \
      ~{if defined(allele_column) then ("--allele-column " +  '"' + allele_column + '"') else ""} \
      ~{if defined(peptide_column) then ("--peptide-column " +  '"' + peptide_column + '"') else ""} \
      ~{if defined(n_flank_column) then ("--n-flank-column " +  '"' + n_flank_column + '"') else ""} \
      ~{if defined(c_flank_column) then ("--c-flank-column " +  '"' + c_flank_column + '"') else ""} \
      ~{if (no_throw) then "--no-throw" else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prediction_column_prefix) then ("--prediction-column-prefix " +  '"' + prediction_column_prefix + '"') else ""} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{if (no_affinity_percentile) then "--no-affinity-percentile" else ""} \
      ~{if (always_include_best_allele) then "--always-include-best-allele" else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if (affinity_only) then "--affinity-only" else ""} \
      ~{if (no_flanking) then "--no-flanking" else ""}
  >>>
  parameter_meta {
    list_supported_alleles: "Prints the list of supported alleles and exits"
    list_supported_peptide_lengths: "Prints the list of supported peptide lengths and exits"
    alleles: "Alleles to predict (exclusive with passing an input\\nCSV)"
    peptides: "Peptides to predict (exclusive with passing an input\\nCSV)"
    allele_column: "Input column name for alleles. Default: 'allele'"
    peptide_column: "Input column name for peptides. Default: 'peptide'"
    n_flank_column: "Column giving N-terminal flanking sequence. Default:\\n'n_flank'"
    c_flank_column: "Column giving C-terminal flanking sequence. Default:\\n'c_flank'"
    no_throw: "Return NaNs for unsupported alleles or peptides\\ninstead of raising"
    out: "Output CSV"
    prediction_column_prefix: "Prefix for output column names. Default: 'mhcflurry_'"
    output_delimiter: "Delimiter character for results. Default: ','"
    no_affinity_percentile: "Do not include affinity percentile rank"
    always_include_best_allele: "Always include the best_allele column even when it is\\nidentical to the allele column (i.e. all queries are\\nmonoallelic)."
    models: "Directory containing models. Either a binding affinity\\npredictor or a presentation predictor can be used.\\nDefault: /root/.local/share/mhcflurry/4/2.0.0/models_c\\nlass1_presentation/models"
    affinity_only: "Affinity prediction only (no antigen processing or\\npresentation)"
    no_flanking: "Do not use flanking sequence information even when\\navailable\\n"
    input_dot_csv: "Input CSV"
  }
  output {
    File out_stdout = stdout()
  }
}