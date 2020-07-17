version 1.0

task ReliabilityProfile.pl {
  input {
    String loca_rna_output_dir
  }
  command <<<
    reliability-profile.pl \
      ~{loca_rna_output_dir}
  >>>
  parameter_meta {
    loca_rna_output_dir: ""
  }
}