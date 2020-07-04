version 1.0

task GetDistribution.pl {
  input {
    Boolean? inputs_gtf_files
    Boolean? quick_load_file
    Boolean? options
    Boolean? more_options
  }
  command <<<
    get_distribution.pl \
      ~{true="-g" false="" inputs_gtf_files} \
      ~{true="-q" false="" quick_load_file} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    inputs_gtf_files: ": Inputs are gtf files instead of list files"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors."
    options: ""
    more_options: ""
  }
}