version 1.0

task GdtoolsCOUNT {
  input {
    Boolean? verbose
    File? reference
    File? path_output_file
    File? detailed_output
    Boolean? calculate_genome_size
    Boolean? base_substitution_statistics
    Boolean? count_polymorphisms
  }
  command <<<
    gdtools COUNT \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(detailed_output) then ("--detailed-output " +  '"' + detailed_output + '"') else ""} \
      ~{if (calculate_genome_size) then "--calculate-genome-size" else ""} \
      ~{if (base_substitution_statistics) then "--base-substitution-statistics" else ""} \
      ~{if (count_polymorphisms) then "--count-polymorphisms" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "produce output for each mutation counted."
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    path_output_file: "path to output CSV file with count data. (DEFAULT=count.csv)"
    detailed_output: "path to optional output tab-delimited file with detailed information about all mutations (Default = OFF)"
    calculate_genome_size: "use APPLY to calculate final genome sizes"
    base_substitution_statistics: "calculate detailed base substitution statistics"
    count_polymorphisms: "count polymorphic mutations (those with frequencies < 1). (Default = FALSE)"
  }
  output {
    File out_stdout = stdout()
    File out_path_output_file = "${in_path_output_file}"
    File out_detailed_output = "${in_detailed_output}"
  }
}