version 1.0

task ArvLs {
  input {
    String? retries
    Boolean? list_file_sizes
    String locator
  }
  command <<<
    arv-ls \
      ~{locator} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{true="-s" false="" list_file_sizes}
  >>>
  parameter_meta {
    retries: "Maximum number of times to retry server requests that encounter temporary failures (e.g., server down). Default 3."
    list_file_sizes: "List file sizes, in KiB."
    locator: "Collection UUID or locator, optionally with a subdir path."
  }
}