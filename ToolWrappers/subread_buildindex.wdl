version 1.0

task Subreadbuildindex {
  input {
    String? base_name_index
    Boolean? build_full_index
    Boolean? create_one_block
    Int? size_requested_memoryram
    Int? specify_threshold_removing
    Boolean? build_colorspace_index
    Boolean? output_version_program
  }
  command <<<
    subread_buildindex \
      ~{if defined(base_name_index) then ("-o " +  '"' + base_name_index + '"') else ""} \
      ~{if (build_full_index) then "-F" else ""} \
      ~{if (create_one_block) then "-B" else ""} \
      ~{if defined(size_requested_memoryram) then ("-M " +  '"' + size_requested_memoryram + '"') else ""} \
      ~{if defined(specify_threshold_removing) then ("-f " +  '"' + specify_threshold_removing + '"') else ""} \
      ~{if (build_colorspace_index) then "-c" else ""} \
      ~{if (output_version_program) then "-v" else ""}
  >>>
  parameter_meta {
    base_name_index: "base name of the index to be created"
    build_full_index: "build a full index for the reference genome. 16bp subreads\\nwill be extracted from every position of the reference\\ngenome. Size of the index is typically 3 times the size of\\nindex built from using the default setting."
    create_one_block: "create one block of index. The built index will not be split\\ninto multiple pieces. This makes the largest amount of\\nmemory be requested when running alignments, but it enables\\nthe maximum mapping speed to be achieved. This option\\noverrides -M when it is provided as well."
    size_requested_memoryram: "size of requested memory(RAM) in megabytes, 8000 by default."
    specify_threshold_removing: "specify the threshold for removing uninformative subreads\\n(highly repetitive 16mers in the reference). 100 by default."
    build_colorspace_index: "build a color-space index."
    output_version_program: "output version of the program."
  }
  output {
    File out_stdout = stdout()
  }
}