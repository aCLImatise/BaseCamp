version 1.0

task BwaSamConverterpl {
  input {
    Boolean? file_read_mappings
    File? collapsed_read_file
    Boolean? mapping_file_arf
    Boolean? collapse_sam_file
    Boolean? tag_temporary_directory
    Boolean? delete_temporary_directory
    Boolean? more_options
    Boolean? options
  }
  command <<<
    bwa_sam_converter_pl \
      ~{if (file_read_mappings) then "-i" else ""} \
      ~{if (collapsed_read_file) then "-o" else ""} \
      ~{if (mapping_file_arf) then "-a" else ""} \
      ~{if (collapse_sam_file) then "-c" else ""} \
      ~{if (tag_temporary_directory) then "-t" else ""} \
      ~{if (delete_temporary_directory) then "-n" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    file_read_mappings: "file with read mappings in sam format"
    collapsed_read_file: "collapsed read output file"
    mapping_file_arf: "mapping file in arf format"
    collapse_sam_file: "collapse sam file first and create correct mirdeep2 ids"
    tag_temporary_directory: "tag for temporary directory"
    delete_temporary_directory: "do not delete temporary directory"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
    File out_collapsed_read_file = "${in_collapsed_read_file}"
  }
}