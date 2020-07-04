version 1.0

task Beagle2chromopainter.pl {
  input {
    String beagle_phased_output_file
    String output_filename_prefix
  }
  command <<<
    beagle2chromopainter.pl \
      ~{beagle_phased_output_file} \
      ~{output_filename_prefix}
  >>>
  parameter_meta {
    beagle_phased_output_file: ""
    output_filename_prefix: ""
  }
}