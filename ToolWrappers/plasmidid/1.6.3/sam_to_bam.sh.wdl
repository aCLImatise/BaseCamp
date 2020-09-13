version 1.0

task SamToBamsh {
  input {
    File? file
    File? directory_optional_default
    String? name
    String? name_optional_unset
    Int? of_threads
    String? v
    String? usage_message
  }
  command <<<
    sam_to_bam_sh \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(name) then ("-s " +  '"' + name + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    file: "file"
    directory_optional_default: "directory (optional). By default the BAM file will replace SAM in the same location"
    name: "name"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    of_threads: "of threads"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}