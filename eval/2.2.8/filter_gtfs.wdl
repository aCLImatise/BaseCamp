version 1.0

task FilterGtfs.pl {
  input {
    Boolean? list_filter_types
    Boolean? inputs_gtf_files
    Boolean? check_alternative_faster
    Boolean? quick_load_file
    Boolean? options
    Boolean? more_options
  }
  command <<<
    filter_gtfs.pl \
      ~{true="-f" false="" list_filter_types} \
      ~{true="-g" false="" inputs_gtf_files} \
      ~{true="-A" false="" check_alternative_faster} \
      ~{true="-q" false="" quick_load_file} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    list_filter_types: ": List filter types"
    inputs_gtf_files: ": Inputs are gtf files instead of list files"
    check_alternative_faster: ": Do not check for alternative splices. (Faster)"
    quick_load_file: ": Quick load the gtf file.  Do not check them for errors.  "
    options: ""
    more_options: ""
  }
}