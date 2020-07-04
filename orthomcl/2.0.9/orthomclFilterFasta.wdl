version 1.0

task OrthomclFilterFasta {
  input {
    String input_dir
    Int min_length
    Int max_percent_stops
    String? good_proteins_file
    String? poor_proteins_file
  }
  command <<<
    orthomclFilterFasta \
      ~{input_dir} \
      ~{min_length} \
      ~{max_percent_stops} \
      ~{good_proteins_file} \
      ~{poor_proteins_file}
  >>>
  parameter_meta {
    input_dir: ""
    min_length: ""
    max_percent_stops: ""
    good_proteins_file: ""
    poor_proteins_file: ""
  }
}