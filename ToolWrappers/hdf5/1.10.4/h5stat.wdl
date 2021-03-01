version 1.0

task H5stat {
  input {
    Boolean? print_file_information
    Boolean? file_metadata
    Boolean? group
    Int? links
    Boolean? group_metadata
    Boolean? d_set
    Int? dims
    Boolean? d_set_metadata
    Boolean? d_type_metadata
    Boolean? attribute
    Int? num_attrs
    Boolean? free_space
    Boolean? summary
    Boolean? enable_error_stack
    String options
  }
  command <<<
    h5stat \
      ~{options} \
      ~{if (print_file_information) then "--file" else ""} \
      ~{if (file_metadata) then "--filemetadata" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if defined(links) then ("--links " +  '"' + links + '"') else ""} \
      ~{if (group_metadata) then "--groupmetadata" else ""} \
      ~{if (d_set) then "--dset" else ""} \
      ~{if defined(dims) then ("--dims " +  '"' + dims + '"') else ""} \
      ~{if (d_set_metadata) then "--dsetmetadata" else ""} \
      ~{if (d_type_metadata) then "--dtypemetadata" else ""} \
      ~{if (attribute) then "--attribute" else ""} \
      ~{if defined(num_attrs) then ("--numattrs " +  '"' + num_attrs + '"') else ""} \
      ~{if (free_space) then "--freespace" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (enable_error_stack) then "--enable-error-stack" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_file_information: "Print file information"
    file_metadata: "Print file space information for file's metadata"
    group: "Print group information"
    links: "Set the threshold for the # of links when printing\\ninformation for small groups.  N is an integer greater\\nthan 0.  The default threshold is 10."
    group_metadata: "Print file space information for groups' metadata"
    d_set: "Print dataset information"
    dims: "Set the threshold for the dimension sizes when printing\\ninformation for small datasets.  N is an integer greater\\nthan 0.  The default threshold is 10."
    d_set_metadata: "Print file space information for datasets' metadata"
    d_type_metadata: "Print datasets' datatype information"
    attribute: "Print attribute information"
    num_attrs: "Set the threshold for the # of attributes when printing\\ninformation for small # of attributes.  N is an integer greater\\nthan 0.  The default threshold is 10."
    free_space: "Print free space information"
    summary: "Print summary of file space information"
    enable_error_stack: "Prints messages from the HDF5 error stack as they occur"
    options: "-h, --help            Print a usage message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}