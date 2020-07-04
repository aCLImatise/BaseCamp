version 1.0

task BwaSamConverter.pl {
  input {
    Boolean? file_read_mappings
    Boolean? collapsed_read_file
    Boolean? mapping_file_arf
    Boolean? collapse_sam_file
    Boolean? tag_temporary_directory
    Boolean? delete_temporary_directory
    Boolean? options
    Boolean? more_options
  }
  command <<<
    bwa_sam_converter.pl \
      ~{true="-i" false="" file_read_mappings} \
      ~{true="-o" false="" collapsed_read_file} \
      ~{true="-a" false="" mapping_file_arf} \
      ~{true="-c" false="" collapse_sam_file} \
      ~{true="-t" false="" tag_temporary_directory} \
      ~{true="-n" false="" delete_temporary_directory} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    file_read_mappings: "file with read mappings in sam format"
    collapsed_read_file: "collapsed read output file"
    mapping_file_arf: "mapping file in arf format"
    collapse_sam_file: "collapse sam file first and create correct mirdeep2 ids"
    tag_temporary_directory: "tag for temporary directory"
    delete_temporary_directory: "do not delete temporary directory"
    options: ""
    more_options: ""
  }
}