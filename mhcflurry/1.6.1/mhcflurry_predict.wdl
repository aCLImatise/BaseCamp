version 1.0

task MhcflurryPredict {
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
    String? models
    Boolean? affinity_only
    Boolean? no_flanking
    String input_dot_csv
  }
  command <<<
    mhcflurry-predict \
      ~{input_dot_csv} \
      ~{true="--list-supported-alleles" false="" list_supported_alleles} \
      ~{true="--list-supported-peptide-lengths" false="" list_supported_peptide_lengths} \
      ~{if defined(alleles) then ("--alleles " +  '"' + alleles + '"') else ""} \
      ~{if defined(peptides) then ("--peptides " +  '"' + peptides + '"') else ""} \
      ~{if defined(allele_column) then ("--allele-column " +  '"' + allele_column + '"') else ""} \
      ~{if defined(peptide_column) then ("--peptide-column " +  '"' + peptide_column + '"') else ""} \
      ~{if defined(n_flank_column) then ("--n-flank-column " +  '"' + n_flank_column + '"') else ""} \
      ~{if defined(c_flank_column) then ("--c-flank-column " +  '"' + c_flank_column + '"') else ""} \
      ~{true="--no-throw" false="" no_throw} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(prediction_column_prefix) then ("--prediction-column-prefix " +  '"' + prediction_column_prefix + '"') else ""} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{true="--no-affinity-percentile" false="" no_affinity_percentile} \
      ~{true="--always-include-best-allele" false="" always_include_best_allele} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{true="--affinity-only" false="" affinity_only} \
      ~{true="--no-flanking" false="" no_flanking}
  >>>
  parameter_meta {
    list_supported_alleles: "Prints the list of supported alleles and exits"
    list_supported_peptide_lengths: "Prints the list of supported peptide lengths and exits"
    alleles: "Alleles to predict (exclusive with passing an input CSV)"
    peptides: "Peptides to predict (exclusive with passing an input CSV)"
    allele_column: "Input column name for alleles. Default: 'allele'"
    peptide_column: "Input column name for peptides. Default: 'peptide'"
    n_flank_column: "Column giving N-terminal flanking sequence. Default: 'n_flank'"
    c_flank_column: "Column giving C-terminal flanking sequence. Default: 'c_flank'"
    no_throw: "Return NaNs for unsupported alleles or peptides instead of raising"
    out: "Output CSV"
    prediction_column_prefix: "Prefix for output column names. Default: 'mhcflurry_'"
    output_delimiter: "Delimiter character for results. Default: ','"
    no_affinity_percentile: "Do not include affinity percentile rank"
    always_include_best_allele: "Always include the best_allele column even when it is identical to the allele column (i.e. all queries are monoallelic)."
    models: "Directory containing models. Either a binding affinity predictor or a presentation predictor can be used. Default: /home/ubuntu/.local/share/mhcflurry/4/1.6.0/m odels_class1_presentation/models"
    affinity_only: "Affinity prediction only (no antigen processing or presentation)"
    no_flanking: "Do not use flanking sequence information even when available"
    input_dot_csv: "Input CSV"
  }
}