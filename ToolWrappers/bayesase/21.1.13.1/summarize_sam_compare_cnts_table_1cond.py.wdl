version 1.0

task SummarizeSamCompareCntsTable1condpy {
  input {
    Directory? output_directory_filtered
    String? input_original_names
    String? collection_filenames
    File? design
    Int? parent_one
    Int? parent_two
    String? sample_col
    String? sample_id_col
    String? apn
    Boolean? debug
    String collectionfilenames
  }
  command <<<
    summarize_sam_compare_cnts_table_1cond_py \
      ~{collectionfilenames} \
      ~{if defined(output_directory_filtered) then ("--output " +  '"' + output_directory_filtered + '"') else ""} \
      ~{if defined(input_original_names) then ("--collection_identifiers " +  '"' + input_original_names + '"') else ""} \
      ~{if defined(collection_filenames) then ("--collection_filenames " +  '"' + collection_filenames + '"') else ""} \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(parent_one) then ("--parent1 " +  '"' + parent_one + '"') else ""} \
      ~{if defined(parent_two) then ("--parent2 " +  '"' + parent_two + '"') else ""} \
      ~{if defined(sample_col) then ("--sampleCol " +  '"' + sample_col + '"') else ""} \
      ~{if defined(sample_id_col) then ("--sampleIDCol " +  '"' + sample_id_col + '"') else ""} \
      ~{if defined(apn) then ("--apn " +  '"' + apn + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    output_directory_filtered: "Output directory for filtered ase counts"
    input_original_names: "Input original names [Required]"
    collection_filenames: "Input galaxy names [Required]"
    design: "Design file"
    parent_one: "Column containing parent 1 genome, G1"
    parent_two: "Column containing parent 2 genome, G2"
    sample_col: "Column containing sample names, no rep info"
    sample_id_col: "Column containing sampleID names, has rep info"
    apn: "APN (average per nucleotide) value for flagging a\\nfeature as found and analyzable"
    debug: "Print debugging output"
    collectionfilenames: "-collection_filenames"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory_filtered = "${in_output_directory_filtered}"
  }
}