version 1.0

task Mhcflurrypredictscan {
  input {
    Boolean? list_supported_alleles
    Boolean? list_supported_peptide_lengths
    String? input_format
    Array[String] alleles
    Array[String] sequences
    String? sequence_id_column
    String? sequence_column
    Boolean? no_throw
    Int? peptide_lengths
    Boolean? results_all
    String? results_best
    String? results_filtered
    Float? threshold_presentation_score
    Float? threshold_processing_score
    Int? threshold_affinity
    Float? threshold_affinity_percentile
    String? out
    String? output_delimiter
    Boolean? no_affinity_percentile
    Directory? models
    Boolean? no_flanking
    Int help
    String input_csv_fasta
  }
  command <<<
    mhcflurry_predict_scan \
      ~{help} \
      ~{input_csv_fasta} \
      ~{if (list_supported_alleles) then "--list-supported-alleles" else ""} \
      ~{if (list_supported_peptide_lengths) then "--list-supported-peptide-lengths" else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(alleles) then ("--alleles " +  '"' + alleles + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(sequence_id_column) then ("--sequence-id-column " +  '"' + sequence_id_column + '"') else ""} \
      ~{if defined(sequence_column) then ("--sequence-column " +  '"' + sequence_column + '"') else ""} \
      ~{if (no_throw) then "--no-throw" else ""} \
      ~{if defined(peptide_lengths) then ("--peptide-lengths " +  '"' + peptide_lengths + '"') else ""} \
      ~{if (results_all) then "--results-all" else ""} \
      ~{if defined(results_best) then ("--results-best " +  '"' + results_best + '"') else ""} \
      ~{if defined(results_filtered) then ("--results-filtered " +  '"' + results_filtered + '"') else ""} \
      ~{if defined(threshold_presentation_score) then ("--threshold-presentation-score " +  '"' + threshold_presentation_score + '"') else ""} \
      ~{if defined(threshold_processing_score) then ("--threshold-processing-score " +  '"' + threshold_processing_score + '"') else ""} \
      ~{if defined(threshold_affinity) then ("--threshold-affinity " +  '"' + threshold_affinity + '"') else ""} \
      ~{if defined(threshold_affinity_percentile) then ("--threshold-affinity-percentile " +  '"' + threshold_affinity_percentile + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{if (no_affinity_percentile) then "--no-affinity-percentile" else ""} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{if (no_flanking) then "--no-flanking" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list_supported_alleles: "Print the list of supported alleles and exits"
    list_supported_peptide_lengths: "Print the list of supported peptide lengths and exits"
    input_format: "Format of input file. By default, it is guessed from\\nthe file extension."
    alleles: "Alleles to predict"
    sequences: "Sequences to predict (exclusive with passing an input\\nfile)"
    sequence_id_column: "Input CSV column name for sequence IDs. Default:\\n'sequence_id'"
    sequence_column: "Input CSV column name for sequences. Default:\\n'sequence'"
    no_throw: "Return NaNs for unsupported alleles or peptides\\ninstead of raising"
    peptide_lengths: "Peptide lengths to consider. Pass as START-END (e.g.\\n8-11) or a comma-separated list (8,9,10,11). When\\nusing START-END, the range is INCLUSIVE on both ends.\\nDefault: 8-11."
    results_all: "Return results for all peptides regardless of\\naffinity, etc."
    results_best: "Take the top result for each sequence according to the\\nspecified predicted quantity"
    results_filtered: "Filter results by the specified quantity."
    threshold_presentation_score: "Threshold if filtering by presentation score. Default:\\n0.7"
    threshold_processing_score: "Threshold if filtering by processing score. Default:\\n0.5"
    threshold_affinity: "Threshold if filtering by affinity. Default: 500"
    threshold_affinity_percentile: "Threshold if filtering by affinity percentile.\\nDefault: 2.0"
    out: "Output CSV"
    output_delimiter: "Delimiter character for results. Default: ','"
    no_affinity_percentile: "Do not include affinity percentile rank"
    models: "Directory containing presentation models.Default: /roo\\nt/.local/share/mhcflurry/4/2.0.0/models_class1_present\\nation/models"
    no_flanking: "Do not use flanking sequence information in\\npredictions\\n"
    help: "Help:"
    input_csv_fasta: "Input CSV or FASTA"
  }
  output {
    File out_stdout = stdout()
  }
}