version 1.0

task CoordinateAdaptersh {
  input {
    File? file_bed_format
    File? file_coordinates_relationship
    File? directory_optional_default
    Int? extend_annotation_default
    File? name
    String? mode_remove_duplicates
    String? mode_remove_suffix
    String? usage_message
  }
  command <<<
    coordinate_adapter_sh \
      ~{if defined(file_bed_format) then ("-i " +  '"' + file_bed_format + '"') else ""} \
      ~{if defined(file_coordinates_relationship) then ("-l " +  '"' + file_coordinates_relationship + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(extend_annotation_default) then ("-n " +  '"' + extend_annotation_default + '"') else ""} \
      ~{if defined(name) then ("-f " +  '"' + name + '"') else ""} \
      ~{if defined(mode_remove_duplicates) then ("-u " +  '"' + mode_remove_duplicates + '"') else ""} \
      ~{if defined(mode_remove_suffix) then ("-p " +  '"' + mode_remove_suffix + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_bed_format: "file in bed format"
    file_coordinates_relationship: "file with coordinates relationship within bed file ddbb and link reference"
    directory_optional_default: "directory (optional). By default the file is placed in the same location as input"
    extend_annotation_default: "to extend annotation, default 2000"
    name: "name"
    mode_remove_duplicates: "mode. Remove duplicates"
    mode_remove_suffix: "mode. Remove suffix of prokka"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}