version 1.0

task GenomeOntology.pl {
  input {
    String peak_file_slash_tag_directory
    String genome
    String output_directory
    String? additional
  }
  command <<<
    GenomeOntology.pl \
      ~{peak_file_slash_tag_directory} \
      ~{genome} \
      ~{output_directory} \
      ~{additional}
  >>>
  parameter_meta {
    peak_file_slash_tag_directory: ""
    genome: ""
    output_directory: ""
    additional: ""
  }
}