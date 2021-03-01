version 1.0

task CalculatePriorsAseCountTablespy {
  input {
    Directory? output_directory_filtered
    File? design
    String? collection_identifiers
    String? collection_filenames
    Boolean? debug
  }
  command <<<
    calculate_priors_ase_count_tables_py \
      ~{if defined(output_directory_filtered) then ("--output " +  '"' + output_directory_filtered + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(collection_identifiers) then ("--collection_identifiers " +  '"' + collection_identifiers + '"') else ""} \
      ~{if defined(collection_filenames) then ("--collection_filenames " +  '"' + collection_filenames + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    output_directory_filtered: "Output directory for filtered ase counts"
    design: "Design file"
    collection_identifiers: "Input original names [Required]"
    collection_filenames: "Input galaxy names [Required]"
    debug: "Print debugging output"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_filtered = "${in_output_directory_filtered}"
  }
}