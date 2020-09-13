version 1.0

task OrthomclFilterFasta {
  input {
    String input_dir
    String min_length
    String max_percent_stops
    String? good_proteins_file
  }
  command <<<
    orthomclFilterFasta \
      ~{input_dir} \
      ~{min_length} \
      ~{max_percent_stops} \
      ~{good_proteins_file}
  >>>
  parameter_meta {
    input_dir: ""
    min_length: ""
    max_percent_stops: ""
    good_proteins_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}