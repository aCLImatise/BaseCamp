version 1.0

task MergeComparatesGenerateBayesianHeaderspy {
  input {
    Directory? output_directory_complete
    String? ase_count_table_collection_identifiers
    String? collection_filenames
    File? design
    Boolean? debug
    String collectionfilenames
  }
  command <<<
    merge_comparates_generate_bayesian_headers_py \
      ~{collectionfilenames} \
      ~{if defined(output_directory_complete) then ("--output " +  '"' + output_directory_complete + '"') else ""} \
      ~{if defined(ase_count_table_collection_identifiers) then ("--collection_identifiers " +  '"' + ase_count_table_collection_identifiers + '"') else ""} \
      ~{if defined(collection_filenames) then ("--collection_filenames " +  '"' + collection_filenames + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    output_directory_complete: "Output directory for complete merged comparate files\\nready for Bayesian"
    ase_count_table_collection_identifiers: "ASE count table collection identifiers"
    collection_filenames: "ASE count table collection filenames"
    design: "Design file"
    debug: "Print debugging output"
    collectionfilenames: "-collection_filenames"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_complete = "${in_output_directory_complete}"
  }
}