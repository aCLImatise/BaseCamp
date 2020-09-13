version 1.0

task CATAddNames {
  input {
    Boolean? _inputfile_path
    File? _outputfile_path
    Boolean? _taxonomyfolderpath_folder
    Boolean? only_official
    File? exclude_scores
    Boolean? force
    Boolean? quiet
  }
  command <<<
    CAT add_names \
      ~{if (_inputfile_path) then "-i" else ""} \
      ~{if (_outputfile_path) then "-o" else ""} \
      ~{if (_taxonomyfolderpath_folder) then "-t" else ""} \
      ~{if (only_official) then "--only_official" else ""} \
      ~{if (exclude_scores) then "--exclude_scores" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    _inputfile_path: ", --input_file     Path to input file. Can be either classification\\noutput file or ORF2LCA output file."
    _outputfile_path: ", --output_file    Path to output file."
    _taxonomyfolderpath_folder: ", --taxonomy_folder\\nPath to folder that contains taxonomy files."
    only_official: "Only output official rank names (i.e., superkingdom,\\nphylum, class, order, family, genus, species)."
    exclude_scores: "Do not include bit-score support scores in the lineage\\nof a classification output file."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_path = "${in__outputfile_path}"
    File out_exclude_scores = "${in_exclude_scores}"
  }
}