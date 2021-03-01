version 1.0

task MergePriorsToComparatepy {
  input {
    File? design
    Int? collection_one_identifiers
    Int? collection_one_filenames
    Int? collection_two_identifiers
    Int? collection_two_filenames
    Directory? out
  }
  command <<<
    merge_priors_to_comparate_py \
      ~{if defined(design) then ("--design " +  '"' + design + '"') else ""} \
      ~{if defined(collection_one_identifiers) then ("--collection1_identifiers " +  '"' + collection_one_identifiers + '"') else ""} \
      ~{if defined(collection_one_filenames) then ("--collection1_filenames " +  '"' + collection_one_filenames + '"') else ""} \
      ~{if defined(collection_two_identifiers) then ("--collection2_identifiers " +  '"' + collection_two_identifiers + '"') else ""} \
      ~{if defined(collection_two_filenames) then ("--collection2_filenames " +  '"' + collection_two_filenames + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bayesase:21.1.13.1--py_0"
  }
  parameter_meta {
    design: "Design file"
    collection_one_identifiers: "ASE count table collection identifiers"
    collection_one_filenames: "ASE count table collection filenames"
    collection_two_identifiers: "Prior count table collection identifiers"
    collection_two_filenames: "ASE count table collection filenames"
    out: "Output directory for complete merged comparate files\\nready for Bayesian\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}