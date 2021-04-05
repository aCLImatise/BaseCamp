version 1.0

task GffToBedsh {
  input {
    File? i
    File? directory_optional_default
    String? supplied_word_cds
    String? locus_tag_cds
    String? chraracter_delimiter_default
    String? field_retrieve_lleft
    String? mode_remove_duplicates
    File? ad_end_outputted
    String? usage_message
  }
  command <<<
    gff_to_bed_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(supplied_word_cds) then ("-C " +  '"' + supplied_word_cds + '"') else ""} \
      ~{if defined(locus_tag_cds) then ("-L " +  '"' + locus_tag_cds + '"') else ""} \
      ~{if defined(chraracter_delimiter_default) then ("-q " +  '"' + chraracter_delimiter_default + '"') else ""} \
      ~{if defined(field_retrieve_lleft) then ("-Q " +  '"' + field_retrieve_lleft + '"') else ""} \
      ~{if defined(mode_remove_duplicates) then ("-u " +  '"' + mode_remove_duplicates + '"') else ""} \
      ~{if defined(ad_end_outputted) then ("-s " +  '"' + ad_end_outputted + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    i: "file"
    directory_optional_default: "directory (optional). By default the file is placed in the same location as input"
    supplied_word_cds: "a supplied word in cds"
    locus_tag_cds: "locus tag in cds"
    chraracter_delimiter_default: "chraracter delimiter, default \\\"_\\\""
    field_retrieve_lleft: "field to retrieve (l=left, r=right), default right"
    mode_remove_duplicates: "mode. Remove duplicates"
    ad_end_outputted: "to ad at the end of the outputted file"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}