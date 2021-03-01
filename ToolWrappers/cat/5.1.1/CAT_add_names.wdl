version 1.0

task CATAddNames {
  input {
    Boolean? input_file
    File? output_file
    Boolean? taxonomy_folder
    Boolean? only_official
    File? exclude_scores
    Boolean? force
    Boolean? quiet
  }
  command <<<
    CAT add_names \
      ~{if (input_file) then "--input_file" else ""} \
      ~{if (output_file) then "--output_file" else ""} \
      ~{if (taxonomy_folder) then "--taxonomy_folder" else ""} \
      ~{if (only_official) then "--only_official" else ""} \
      ~{if (exclude_scores) then "--exclude_scores" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file: "Path to input file. Can be either classification\\noutput file or ORF2LCA output file."
    output_file: "Path to output file."
    taxonomy_folder: "Path to folder that contains taxonomy files."
    only_official: "Only output official rank names (i.e., superkingdom,\\nphylum, class, order, family, genus, species)."
    exclude_scores: "Do not include bit-score support scores in the lineage\\nof a classification output file."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_exclude_scores = "${in_exclude_scores}"
  }
}