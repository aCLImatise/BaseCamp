version 1.0

task CATAddNames {
  input {
    Boolean? _inputfile_path
    Boolean? _outputfile_path
    Boolean? _taxonomyfolder_path
    Boolean? only_official
    Boolean? exclude_scores
    Boolean? force
    Boolean? quiet
  }
  command <<<
    CAT add_names \
      ~{true="-i" false="" _inputfile_path} \
      ~{true="-o" false="" _outputfile_path} \
      ~{true="-t" false="" _taxonomyfolder_path} \
      ~{true="--only_official" false="" only_official} \
      ~{true="--exclude_scores" false="" exclude_scores} \
      ~{true="--force" false="" force} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    _inputfile_path: ", --input_file     Path to input file. Can be either classification output file or ORF2LCA output file."
    _outputfile_path: ", --output_file    Path to output file."
    _taxonomyfolder_path: ", --taxonomy_folder  Path to folder that contains taxonomy files."
    only_official: "Only output official level names."
    exclude_scores: "Do not include bit-score support scores in the lineage."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
  }
}