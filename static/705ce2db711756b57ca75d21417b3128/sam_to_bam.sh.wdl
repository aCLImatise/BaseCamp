version 1.0

task SamToBamsh {
  input {
    File? i
    File? directory_optional_default
    String? name
    String? name_optional_unset
    Int? of_threads
    String? usage_message
  }
  command <<<
    sam_to_bam_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(name) then ("-s " +  '"' + name + '"') else ""} \
      ~{if defined(name_optional_unset) then ("-g " +  '"' + name_optional_unset + '"') else ""} \
      ~{if defined(of_threads) then ("-T " +  '"' + of_threads + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plasmidid:1.6.4--1"
  }
  parameter_meta {
    i: "file"
    directory_optional_default: "directory (optional). By default the BAM file will replace SAM in the same location"
    name: "name"
    name_optional_unset: "name (optional). If unset, samples will be gathered in NO_GROUP group"
    of_threads: "of threads"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}