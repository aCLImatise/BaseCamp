version 1.0

task DbkitCreatepy {
  input {
    String? list
    String? url
    File? path
    Int? id_length
    String? id_case
    String? id_extension
    String? id_prefix
    String? index
    String? database
    File? log
  }
  command <<<
    dbkit_create_py \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(url) then ("--url " +  '"' + url + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(id_length) then ("--idlength " +  '"' + id_length + '"') else ""} \
      ~{if defined(id_case) then ("--idcase " +  '"' + id_case + '"') else ""} \
      ~{if defined(id_extension) then ("--idextension " +  '"' + id_extension + '"') else ""} \
      ~{if defined(id_prefix) then ("--idprefix " +  '"' + id_prefix + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ffindex-dbkit:0.2--pyh3252c3a_0"
  }
  parameter_meta {
    list: "List of entries"
    url: "Source Url"
    path: "Path to files"
    id_length: "Format Identifier Length (integer)"
    id_case: "Format Identifier Case (lower, upper)"
    id_extension: "Format Identifier Suffix"
    id_prefix: "Format Identifier Prefix"
    index: "Output Database Index"
    database: "Output Database"
    log: "Log file"
  }
  output {
    File out_stdout = stdout()
  }
}