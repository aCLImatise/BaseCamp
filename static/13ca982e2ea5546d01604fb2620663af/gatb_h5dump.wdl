version 1.0

task Gatbh5dump {
  input {
    Boolean? contents
    Boolean? superblock
    Boolean? header
    File? file_driver
    File? output_raw_data
    File? binary
    File? ddl
    String? attribute
    String? dataset
    String? group
    String? soft_link
    String? datatype
    File? any_path
    Boolean? only_attr
    Boolean? object_ids
    Boolean? properties
    Int? packed_bits
    Boolean? region
    Boolean? escape
    Boolean? print_byte_integer
    Boolean? no_index
    String? format
    String? sort_by
    String? sort_order
    Int? enable_error_stack
    Int? width
    Boolean? xml
    Boolean? use_dtd
    String? xml_dtd
    File? xml_ns
    String? start
    String? stride
    Int? count
    Int? block
    String options
    String occur_dot
  }
  command <<<
    gatb_h5dump \
      ~{options} \
      ~{occur_dot} \
      ~{if (contents) then "--contents" else ""} \
      ~{if (superblock) then "--superblock" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if defined(file_driver) then ("--filedriver " +  '"' + file_driver + '"') else ""} \
      ~{if defined(output_raw_data) then ("--output " +  '"' + output_raw_data + '"') else ""} \
      ~{if defined(binary) then ("--binary " +  '"' + binary + '"') else ""} \
      ~{if defined(ddl) then ("--ddl " +  '"' + ddl + '"') else ""} \
      ~{if defined(attribute) then ("--attribute " +  '"' + attribute + '"') else ""} \
      ~{if defined(dataset) then ("--dataset " +  '"' + dataset + '"') else ""} \
      ~{if defined(group) then ("--group " +  '"' + group + '"') else ""} \
      ~{if defined(soft_link) then ("--soft-link " +  '"' + soft_link + '"') else ""} \
      ~{if defined(datatype) then ("--datatype " +  '"' + datatype + '"') else ""} \
      ~{if defined(any_path) then ("--any_path " +  '"' + any_path + '"') else ""} \
      ~{if (only_attr) then "--onlyattr" else ""} \
      ~{if (object_ids) then "--object-ids" else ""} \
      ~{if (properties) then "--properties" else ""} \
      ~{if defined(packed_bits) then ("--packedbits " +  '"' + packed_bits + '"') else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (escape) then "--escape" else ""} \
      ~{if (print_byte_integer) then "--string" else ""} \
      ~{if (no_index) then "--noindex" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(sort_by) then ("--sort_by " +  '"' + sort_by + '"') else ""} \
      ~{if defined(sort_order) then ("--sort_order " +  '"' + sort_order + '"') else ""} \
      ~{if defined(enable_error_stack) then ("--enable-error-stack " +  '"' + enable_error_stack + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (xml) then "--xml" else ""} \
      ~{if (use_dtd) then "--use-dtd" else ""} \
      ~{if defined(xml_dtd) then ("--xml-dtd " +  '"' + xml_dtd + '"') else ""} \
      ~{if defined(xml_ns) then ("--xml-ns " +  '"' + xml_ns + '"') else ""} \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(block) then ("--block " +  '"' + block + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contents: "Print a list of the file contents and exit\\nOptional value 1 also prints attributes."
    superblock: "Print the content of the super block"
    header: "Print the header only; no data is displayed"
    file_driver: "Specify which driver to open the file with"
    output_raw_data: "Output raw data into file F"
    binary: "Binary file output, of form B"
    ddl: "Output ddl text into file F\\nUse blank(empty) filename F to suppress ddl display"
    attribute: "Print the specified attribute\\nIf an attribute name contains a slash (/), escape the\\nslash with a preceding backslash (\\).\\n(See example section below.)"
    dataset: "Print the specified dataset"
    group: "Print the specified group and all members"
    soft_link: "Print the value(s) of the specified soft link"
    datatype: "Print the specified named datatype"
    any_path: "Print any attribute, dataset, group, datatype, or link that matches P\\nP can be the absolute path or just a relative path."
    only_attr: "Print the header and value of attributes\\nOptional value 0 suppresses printing attributes."
    object_ids: "Print the object ids"
    properties: "Print dataset filters, storage layout and fill value"
    packed_bits: "Print packed bits as unsigned integers, using mask\\nformat L for an integer dataset specified with\\noption -d. L is a list of offset,length values,\\nseparated by commas. Offset is the beginning bit in\\nthe data value and length is the number of bits of\\nthe mask."
    region: "Print dataset pointed by region references"
    escape: "Escape non printing characters"
    print_byte_integer: "Print 1-byte integer datasets as ASCII"
    no_index: "Do not print array indices with the data"
    format: "Set the floating point output format"
    sort_by: "Sort groups and attributes by index Q"
    sort_order: "Sort groups and attributes by order Z"
    enable_error_stack: "messages from the HDF5 error stack as they"
    width: "Set the number of columns of output. A value of 0 (zero)\\nsets the number of columns to the maximum (65535).\\nDefault width is 80 columns."
    xml: "Output in XML using Schema"
    use_dtd: "Output in XML using DTD"
    xml_dtd: "Use the DTD or schema at U"
    xml_ns: "(XML Schema) Use qualified names n the XML\\n\\\":\\\": no namespace, default: \\\"hdf5:\\\"\\nE.g., to dump a file called `-f', use h5dump -- -f"
    start: "Offset of start of subsetting selection"
    stride: "Hyperslab stride"
    count: "Number of blocks to include in selection"
    block: "Size of block in hyperslab"
    options: "-h,   --help         Print a usage message and exit"
    occur_dot: "--no-compact-subset  Disable compact form of subsetting and allow the use"
  }
  output {
    File out_stdout = stdout()
    File out_output_raw_data = "${in_output_raw_data}"
    File out_binary = "${in_binary}"
    File out_ddl = "${in_ddl}"
  }
}