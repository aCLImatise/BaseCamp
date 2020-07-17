version 1.0

task GdtoolsCOUNT {
  input {
    Boolean? verbose
    String? reference
    String? path_output_file
    String? detailed_output
    Boolean? calculate_genome_size
    Boolean? base_substitution_statistics
    Boolean? count_polymorphisms
  }
  command <<<
    gdtools COUNT \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(detailed_output) then ("--detailed-output " +  '"' + detailed_output + '"') else ""} \
      ~{true="--calculate-genome-size" false="" calculate_genome_size} \
      ~{true="--base-substitution-statistics" false="" base_substitution_statistics} \
      ~{true="--count-polymorphisms" false="" count_polymorphisms}
  >>>
  parameter_meta {
    verbose: "produce output for each mutation counted."
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    path_output_file: "path to output CSV file with count data. (DEFAULT=count.csv)"
    detailed_output: "path to optional output tab-delimited file with detailed information about all mutations (Default = OFF)"
    calculate_genome_size: "use APPLY to calculate final genome sizes"
    base_substitution_statistics: "calculate detailed base substitution statistics"
    count_polymorphisms: "count polymorphic mutations (those with frequencies < 1). (Default = FALSE)"
  }
}