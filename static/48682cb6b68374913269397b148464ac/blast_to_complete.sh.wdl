version 1.0

task BlastToCompletesh {
  input {
    File? file
    Int? identity_cutoff_default
    Int? length_percentage_cutoff
    File? directory_optional_default
    String? var_4
    String? field_retrieve_left
    String? var_6
    String? field_retrieve_right
    String? mode
    String? outputs_one_entry
    String? v
    String? usage_message
  }
  command <<<
    blast_to_complete_sh \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if defined(identity_cutoff_default) then ("-b " +  '"' + identity_cutoff_default + '"') else ""} \
      ~{if defined(length_percentage_cutoff) then ("-l " +  '"' + length_percentage_cutoff + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(var_4) then ("-q " +  '"' + var_4 + '"') else ""} \
      ~{if defined(field_retrieve_left) then ("-Q " +  '"' + field_retrieve_left + '"') else ""} \
      ~{if defined(var_6) then ("-d " +  '"' + var_6 + '"') else ""} \
      ~{if defined(field_retrieve_right) then ("-D " +  '"' + field_retrieve_right + '"') else ""} \
      ~{if defined(mode) then ("-I " +  '"' + mode + '"') else ""} \
      ~{if defined(outputs_one_entry) then ("-u " +  '"' + outputs_one_entry + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    file: "file"
    identity_cutoff_default: "identity cutoff (0 - 100), default 90"
    length_percentage_cutoff: "length percentage cutoff (0 - 100), default 50, use 90 for genes"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    var_4: "chraracter delimiter, default \\\"_\\\""
    field_retrieve_left: "field to retrieve (l=left, r=right), default left"
    var_6: "chraracter delimiter, default \\\"_\\\""
    field_retrieve_right: "field to retrieve (l=left, r=right), default right"
    mode: "mode"
    outputs_one_entry: "Outputs only one query entry per database entry"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}