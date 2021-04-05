version 1.0

task BlastToBedsh {
  input {
    File? var_0
    Int? identity_cutoff_default
    Int? length_percentage_cutoff
    Int? length_alignment_default
    File? directory_optional_default
    String? var_5
    String? field_retrieve_left
    String? var_7
    String? field_retrieve_right
    String? mode
    String? outputs_one_entry
    String? mode_one_query
    String? usage_message
  }
  command <<<
    blast_to_bed_sh \
      ~{if defined(var_0) then ("-i " +  '"' + var_0 + '"') else ""} \
      ~{if defined(identity_cutoff_default) then ("-b " +  '"' + identity_cutoff_default + '"') else ""} \
      ~{if defined(length_percentage_cutoff) then ("-l " +  '"' + length_percentage_cutoff + '"') else ""} \
      ~{if defined(length_alignment_default) then ("-L " +  '"' + length_alignment_default + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(var_5) then ("-q " +  '"' + var_5 + '"') else ""} \
      ~{if defined(field_retrieve_left) then ("-Q " +  '"' + field_retrieve_left + '"') else ""} \
      ~{if defined(var_7) then ("-d " +  '"' + var_7 + '"') else ""} \
      ~{if defined(field_retrieve_right) then ("-D " +  '"' + field_retrieve_right + '"') else ""} \
      ~{if defined(mode) then ("-I " +  '"' + mode + '"') else ""} \
      ~{if defined(outputs_one_entry) then ("-u " +  '"' + outputs_one_entry + '"') else ""} \
      ~{if defined(mode_one_query) then ("-U " +  '"' + mode_one_query + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    var_0: "file"
    identity_cutoff_default: "identity cutoff (0 - 100), default 90"
    length_percentage_cutoff: "length percentage cutoff (0 - 100), default 20, use 90 for genes"
    length_alignment_default: "length alignment cutoff, default 0, use 200 or 500 for contigs"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    var_5: "chraracter delimiter, default \\\"_\\\""
    field_retrieve_left: "field to retrieve (l=left, r=right), default left"
    var_7: "chraracter delimiter, default \\\"_\\\""
    field_retrieve_right: "field to retrieve (l=left, r=right), default right"
    mode: "mode"
    outputs_one_entry: "Outputs only one query entry per database entry"
    mode_one_query: "mode with delimiter. Outputs only one delimited query per database entry"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}