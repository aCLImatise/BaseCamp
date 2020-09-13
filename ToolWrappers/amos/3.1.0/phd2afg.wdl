version 1.0

task Phd2afg {
  input {
    Directory? directory_where_located
    File? name_output_file
    File? optional_file_containing_coordinates
    File? optional_file_containing_info
  }
  command <<<
    phd2afg \
      ~{if defined(directory_where_located) then ("-d " +  '"' + directory_where_located + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(optional_file_containing_coordinates) then ("-c " +  '"' + optional_file_containing_coordinates + '"') else ""} \
      ~{if defined(optional_file_containing_info) then ("-m " +  '"' + optional_file_containing_info + '"') else ""}
  >>>
  parameter_meta {
    directory_where_located: "directory where phd files are located"
    name_output_file: "name of the output file"
    optional_file_containing_coordinates: "optional: file containing clipping coordinates"
    optional_file_containing_info: "optional: file containing mate-pair info in Bambus .mates format"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}