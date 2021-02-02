version 1.0

task Gatbh5dump {
  input {
    Boolean? _version_print
    Boolean? _contents_print
    Boolean? _superblock_print
    Boolean? _header_print
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
    Boolean? _onlyattr_print
    String? vds_view_first_missing
    Int? vds_gap_size
    Boolean? _objectids_print
    Boolean? _properties_filters
    Int? packed_bits
    Boolean? _region_dataset
    Boolean? _escape_escape
    Boolean? _string_print
    Boolean? _noindex_print
    String? format
    String? sort_by
    String? sort_order
    File? enable_error_stack
    Boolean? no_compact_subset
    Int? width
    Boolean? _xml_output
    Boolean? _output_using
    String? xml_dtd
    File? xml_ns
    String? _startstart_offset
    String? stride
    Int? _countcount_number
    Int? _blockblock_size
    String options
  }
  command <<<
    gatb_h5dump \
      ~{options} \
      ~{if (_version_print) then "-V" else ""} \
      ~{if (_contents_print) then "-n" else ""} \
      ~{if (_superblock_print) then "-B" else ""} \
      ~{if (_header_print) then "-H" else ""} \
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
      ~{if (_onlyattr_print) then "-A" else ""} \
      ~{if defined(vds_view_first_missing) then ("--vds-view-first-missing " +  '"' + vds_view_first_missing + '"') else ""} \
      ~{if defined(vds_gap_size) then ("--vds-gap-size " +  '"' + vds_gap_size + '"') else ""} \
      ~{if (_objectids_print) then "-i" else ""} \
      ~{if (_properties_filters) then "-p" else ""} \
      ~{if defined(packed_bits) then ("--packedbits " +  '"' + packed_bits + '"') else ""} \
      ~{if (_region_dataset) then "-R" else ""} \
      ~{if (_escape_escape) then "-e" else ""} \
      ~{if (_string_print) then "-r" else ""} \
      ~{if (_noindex_print) then "-y" else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(sort_by) then ("--sort_by " +  '"' + sort_by + '"') else ""} \
      ~{if defined(sort_order) then ("--sort_order " +  '"' + sort_order + '"') else ""} \
      ~{if defined(enable_error_stack) then ("--enable-error-stack " +  '"' + enable_error_stack + '"') else ""} \
      ~{if (no_compact_subset) then "--no-compact-subset" else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (_xml_output) then "-x" else ""} \
      ~{if (_output_using) then "-u" else ""} \
      ~{if defined(xml_dtd) then ("--xml-dtd " +  '"' + xml_dtd + '"') else ""} \
      ~{if defined(xml_ns) then ("--xml-ns " +  '"' + xml_ns + '"') else ""} \
      ~{if defined(_startstart_offset) then ("-s " +  '"' + _startstart_offset + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if defined(_countcount_number) then ("-c " +  '"' + _countcount_number + '"') else ""} \
      ~{if defined(_blockblock_size) then ("-k " +  '"' + _blockblock_size + '"') else ""}
  >>>
  parameter_meta {
    _version_print: ",   --version      Print version number and exit"
    _contents_print: ",   --contents     Print a list of the file contents and exit\\nOptional value 1 also prints attributes."
    _superblock_print: ",   --superblock   Print the content of the super block"
    _header_print: ",   --header       Print the header only; no data is displayed"
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
    _onlyattr_print: ",   --onlyattr     Print the header and value of attributes\\nOptional value 0 suppresses printing attributes."
    vds_view_first_missing: "the VDS bounds to first missing mapped elements."
    vds_gap_size: "Set the missing file gap size, N=non-negative integers"
    _objectids_print: ",   --object-ids   Print the object ids"
    _properties_filters: ",   --properties   Print dataset filters, storage layout and fill value"
    packed_bits: "Print packed bits as unsigned integers, using mask\\nformat L for an integer dataset specified with\\noption -d. L is a list of offset,length values,\\nseparated by commas. Offset is the beginning bit in\\nthe data value and length is the number of bits of\\nthe mask."
    _region_dataset: ",   --region       Print dataset pointed by region references"
    _escape_escape: ",   --escape       Escape non printing characters"
    _string_print: ",   --string       Print 1-byte integer datasets as ASCII"
    _noindex_print: ",   --noindex      Do not print array indices with the data"
    format: "Set the floating point output format"
    sort_by: "Sort groups and attributes by index Q"
    sort_order: "Sort groups and attributes by order Z"
    enable_error_stack: "messages from the HDF5 error stack as they occur.\\nOptional value 2 also prints file open errors."
    no_compact_subset: "Disable compact form of subsetting and allow the use\\nof \\\"[\\\" in dataset names."
    width: "Set the number of columns of output. A value of 0 (zero)\\nsets the number of columns to the maximum (65535).\\nDefault width is 80 columns."
    _xml_output: ",   --xml          Output in XML using Schema"
    _output_using: ",   --use-dtd      Output in XML using DTD"
    xml_dtd: "Use the DTD or schema at U"
    xml_ns: "(XML Schema) Use qualified names n the XML\\n\\\":\\\": no namespace, default: \\\"hdf5:\\\"\\nE.g., to dump a file called `-f', use h5dump -- -f"
    _startstart_offset: ",  --start=START    Offset of start of subsetting selection"
    stride: "Hyperslab stride"
    _countcount_number: ",  --count=COUNT    Number of blocks to include in selection"
    _blockblock_size: ",  --block=BLOCK    Size of block in hyperslab"
    options: "-h,   --help         Print a usage message and exit"
  }
  output {
    File out_stdout = stdout()
    File out_output_raw_data = "${in_output_raw_data}"
    File out_binary = "${in_binary}"
    File out_ddl = "${in_ddl}"
  }
}