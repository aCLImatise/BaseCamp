version 1.0

task H5copy {
  input {
    File? output_file_name
    Boolean? source
    Boolean? destination
    Boolean? parents
    Boolean? verbose
    Boolean? enable_error_stack
    Boolean? flag
    String objects
    String options
    String shallow
    String soft
    String ext
    String ref
    String no_attr
    String all_flags
    Int h_five_o_copy_shallow_hierarchy_flag
    Int h_five_o_copy_expand_ext_link_flag
    Int h_five_o_copy_without_attr_flag
  }
  command <<<
    h5copy \
      ~{objects} \
      ~{options} \
      ~{shallow} \
      ~{soft} \
      ~{ext} \
      ~{ref} \
      ~{no_attr} \
      ~{all_flags} \
      ~{h_five_o_copy_shallow_hierarchy_flag} \
      ~{h_five_o_copy_expand_ext_link_flag} \
      ~{h_five_o_copy_without_attr_flag} \
      ~{if (output_file_name) then "--output" else ""} \
      ~{if (source) then "--source" else ""} \
      ~{if (destination) then "--destination" else ""} \
      ~{if (parents) then "--parents" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (enable_error_stack) then "--enable-error-stack" else ""} \
      ~{if (flag) then "--flag" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_file_name: "output file name"
    source: "source object name"
    destination: "destination object name"
    parents: "No error if existing, make parent groups as needed"
    verbose: "Print information about OBJECTS and OPTIONS"
    enable_error_stack: "Prints messages from the HDF5 error stack as they occur."
    flag: "Flag type"
    objects: "-i, --input        input file name"
    options: "-h, --help         Print a usage message and exit"
    shallow: "Copy only immediate members for groups"
    soft: "Expand soft links into new objects"
    ext: "Expand external links into new objects"
    ref: "Copy references and any referenced objects, i.e., objects\\nthat the references point to.\\nReferenced objects are copied in addition to the objects\\nspecified on the command line and reference datasets are\\npopulated with correct reference values. Copies of referenced\\ndatasets outside the copy range specified on the command line\\nwill normally have a different name from the original.\\n(Default:Without this option, reference value(s) in any\\nreference datasets are set to NULL and referenced objects are\\nnot copied unless they are otherwise within the copy range\\nspecified on the command line.)"
    no_attr: "Copy object without copying attributes"
    all_flags: "Switches all flags from the default to the non-default setting"
    h_five_o_copy_shallow_hierarchy_flag: "H5O_COPY_EXPAND_SOFT_LINK_FLAG"
    h_five_o_copy_expand_ext_link_flag: "H5O_COPY_EXPAND_REFERENCE_FLAG"
    h_five_o_copy_without_attr_flag: "H5O_COPY_ALL"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}