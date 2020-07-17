version 1.0

task GatbH5dump {
  input {
    Boolean? _contents_print
    Boolean? _superblock_print
    Boolean? _header_print
    String? file_driver
    String? output_raw_data
    String? binary
    String? ddl
    String? attribute
    String? dataset
    String? group
    String? soft_link
    String? datatype
    String? any_path
    Boolean? _onlyattr_print
    Boolean? _objectids_print
    Boolean? _properties_print
    String? packed_bits
    Boolean? _region_dataset
    Boolean? no_compact_subset
    String? width
    Boolean? _xml_output
    Boolean? _output_using
    String? xml_dtd
    String? xml_ns
    String? _startstart_offset
    String? stride
    String? _countcount_number
    String? _blockblock_size
    String options
  }
  command <<<
    gatb-h5dump \
      ~{options} \
      ~{true="-n" false="" _contents_print} \
      ~{true="-B" false="" _superblock_print} \
      ~{true="-H" false="" _header_print} \
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
      ~{true="-A" false="" _onlyattr_print} \
      ~{true="-i" false="" _objectids_print} \
      ~{true="-p" false="" _properties_print} \
      ~{if defined(packed_bits) then ("--packedbits " +  '"' + packed_bits + '"') else ""} \
      ~{true="-R" false="" _region_dataset} \
      ~{true="--no-compact-subset" false="" no_compact_subset} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{true="-x" false="" _xml_output} \
      ~{true="-u" false="" _output_using} \
      ~{if defined(xml_dtd) then ("--xml-dtd " +  '"' + xml_dtd + '"') else ""} \
      ~{if defined(xml_ns) then ("--xml-ns " +  '"' + xml_ns + '"') else ""} \
      ~{if defined(_startstart_offset) then ("-s " +  '"' + _startstart_offset + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if defined(_countcount_number) then ("-c " +  '"' + _countcount_number + '"') else ""} \
      ~{if defined(_blockblock_size) then ("-k " +  '"' + _blockblock_size + '"') else ""}
  >>>
  parameter_meta {
    _contents_print: ",   --contents     Print a list of the file contents and exit Optional value 1 also prints attributes."
    _superblock_print: ",   --superblock   Print the content of the super block"
    _header_print: ",   --header       Print the header only; no data is displayed"
    file_driver: "Specify which driver to open the file with"
    output_raw_data: "Output raw data into file F"
    binary: "Binary file output, of form B"
    ddl: "Output ddl text into file F Use blank(empty) filename F to suppress ddl display"
    attribute: "Print the specified attribute If an attribute name contains a slash (/), escape the slash with a preceding backslash (\). (See example section below.)"
    dataset: "Print the specified dataset"
    group: "Print the specified group and all members"
    soft_link: "Print the value(s) of the specified soft link"
    datatype: "Print the specified named datatype"
    any_path: "Print any attribute, dataset, group, datatype, or link that matches P P can be the absolute path or just a relative path."
    _onlyattr_print: ",   --onlyattr     Print the header and value of attributes Optional value 0 suppresses printing attributes."
    _objectids_print: ",   --object-ids   Print the object ids"
    _properties_print: ",   --properties   Print dataset filters, storage layout and fill value"
    packed_bits: "Print packed bits as unsigned integers, using mask format L for an integer dataset specified with option -d. L is a list of offset,length values, separated by commas. Offset is the beginning bit in the data value and length is the number of bits of the mask."
    _region_dataset: ",   --region       Print dataset pointed by region references"
    no_compact_subset: "Disable compact form of subsetting and allow the use of \"[\" in dataset names."
    width: "Set the number of columns of output. A value of 0 (zero) sets the number of columns to the maximum (65535). Default width is 80 columns."
    _xml_output: ",   --xml          Output in XML using Schema"
    _output_using: ",   --use-dtd      Output in XML using DTD"
    xml_dtd: "Use the DTD or schema at U"
    xml_ns: "(XML Schema) Use qualified names n the XML \":\": no namespace, default: \"hdf5:\" E.g., to dump a file called `-f', use h5dump -- -f"
    _startstart_offset: ",  --start=START    Offset of start of subsetting selection"
    stride: "Hyperslab stride"
    _countcount_number: ",  --count=COUNT    Number of blocks to include in selection"
    _blockblock_size: ",  --block=BLOCK    Size of block in hyperslab"
    options: "-h,   --help         Print a usage message and exit -V,   --version      Print version number and exit"
  }
}