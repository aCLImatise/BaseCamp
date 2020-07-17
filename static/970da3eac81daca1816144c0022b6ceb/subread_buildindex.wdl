version 1.0

task SubreadBuildindex {
  input {
    String? base_name_created
    Boolean? build_full_index
    Boolean? create_one_block
    Int? size_requested_memoryram
    Int? specify_threshold_removing
    Boolean? build_colorspace_index
    Boolean? output_version_program
  }
  command <<<
    subread-buildindex \
      ~{if defined(base_name_created) then ("-o " +  '"' + base_name_created + '"') else ""} \
      ~{true="-F" false="" build_full_index} \
      ~{true="-B" false="" create_one_block} \
      ~{if defined(size_requested_memoryram) then ("-M " +  '"' + size_requested_memoryram + '"') else ""} \
      ~{if defined(specify_threshold_removing) then ("-f " +  '"' + specify_threshold_removing + '"') else ""} \
      ~{true="-c" false="" build_colorspace_index} \
      ~{true="-v" false="" output_version_program}
  >>>
  parameter_meta {
    base_name_created: "base name of the index to be created"
    build_full_index: "build a full index for the reference genome. 16bp subreads will be extracted from every position of the reference genome. Size of the index is typically 3 times the size of index built from using the default setting."
    create_one_block: "create one block of index. The built index will not be split into multiple pieces. This makes the largest amount of memory be requested when running alignments, but it enables the maximum mapping speed to be achieved. This option overrides -M when it is provided as well."
    size_requested_memoryram: "size of requested memory(RAM) in megabytes, 8000 by default."
    specify_threshold_removing: "specify the threshold for removing uninformative subreads (highly repetitive 16mers in the reference). 100 by default."
    build_colorspace_index: "build a color-space index."
    output_version_program: "output version of the program."
  }
}