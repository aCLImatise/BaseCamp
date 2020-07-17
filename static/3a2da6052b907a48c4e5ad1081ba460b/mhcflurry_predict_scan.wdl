version 1.0

task MhcflurryPredictScan {
  input {
    Boolean? list_supported_alleles
    Boolean? list_supported_peptide_lengths
    String? input_format
    Array[String] alleles
    Array[String] sequences
    String? sequence_id_column
    String? sequence_column
    Boolean? no_throw
    String? peptide_lengths
    Boolean? results_all
    String? results_best
    String? results_filtered
    String? threshold_presentation_score
    String? threshold_processing_score
    String? threshold_affinity
    String? threshold_affinity_percentile
    String? out
    String? output_delimiter
    Boolean? no_affinity_percentile
    String? models
    Boolean? no_flanking
    String input_csv_fasta
  }
  command <<<
    mhcflurry-predict-scan \
      ~{input_csv_fasta} \
      ~{true="--list-supported-alleles" false="" list_supported_alleles} \
      ~{true="--list-supported-peptide-lengths" false="" list_supported_peptide_lengths} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(alleles) then ("--alleles " +  '"' + alleles + '"') else ""} \
      ~{if defined(sequences) then ("--sequences " +  '"' + sequences + '"') else ""} \
      ~{if defined(sequence_id_column) then ("--sequence-id-column " +  '"' + sequence_id_column + '"') else ""} \
      ~{if defined(sequence_column) then ("--sequence-column " +  '"' + sequence_column + '"') else ""} \
      ~{true="--no-throw" false="" no_throw} \
      ~{if defined(peptide_lengths) then ("--peptide-lengths " +  '"' + peptide_lengths + '"') else ""} \
      ~{true="--results-all" false="" results_all} \
      ~{if defined(results_best) then ("--results-best " +  '"' + results_best + '"') else ""} \
      ~{if defined(results_filtered) then ("--results-filtered " +  '"' + results_filtered + '"') else ""} \
      ~{if defined(threshold_presentation_score) then ("--threshold-presentation-score " +  '"' + threshold_presentation_score + '"') else ""} \
      ~{if defined(threshold_processing_score) then ("--threshold-processing-score " +  '"' + threshold_processing_score + '"') else ""} \
      ~{if defined(threshold_affinity) then ("--threshold-affinity " +  '"' + threshold_affinity + '"') else ""} \
      ~{if defined(threshold_affinity_percentile) then ("--threshold-affinity-percentile " +  '"' + threshold_affinity_percentile + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(output_delimiter) then ("--output-delimiter " +  '"' + output_delimiter + '"') else ""} \
      ~{true="--no-affinity-percentile" false="" no_affinity_percentile} \
      ~{if defined(models) then ("--models " +  '"' + models + '"') else ""} \
      ~{true="--no-flanking" false="" no_flanking}
  >>>
  parameter_meta {
    list_supported_alleles: "Print the list of supported alleles and exits"
    list_supported_peptide_lengths: "Print the list of supported peptide lengths and exits"
    input_format: "Format of input file. By default, it is guessed from the file extension."
    alleles: "Alleles to predict"
    sequences: "Sequences to predict (exclusive with passing an input file)"
    sequence_id_column: "Input CSV column name for sequence IDs. Default: 'sequence_id'"
    sequence_column: "Input CSV column name for sequences. Default: 'sequence'"
    no_throw: "Return NaNs for unsupported alleles or peptides instead of raising"
    peptide_lengths: "Peptide lengths to consider. Pass as START-END (e.g. 8-11) or a comma-separated list (8,9,10,11). When using START-END, the range is INCLUSIVE on both ends. Default: 8-11."
    results_all: "Return results for all peptides regardless of affinity, etc."
    results_best: "Take the top result for each sequence according to the specified predicted quantity"
    results_filtered: "Filter results by the specified quantity."
    threshold_presentation_score: "Threshold if filtering by presentation score. Default: 0.7"
    threshold_processing_score: "Threshold if filtering by processing score. Default: 0.5"
    threshold_affinity: "Threshold if filtering by affinity. Default: 500"
    threshold_affinity_percentile: "Threshold if filtering by affinity percentile. Default: 2.0"
    out: "Output CSV"
    output_delimiter: "Delimiter character for results. Default: ','"
    no_affinity_percentile: "Do not include affinity percentile rank"
    models: "Directory containing presentation models.Default: /hom e/ubuntu/.local/share/mhcflurry/4/1.6.0/models_class1_ presentation/models"
    no_flanking: "Do not use flanking sequence information in predictions"
    input_csv_fasta: "Input CSV or FASTA"
  }
}