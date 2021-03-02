version 1.0

task Arvls {
  input {
    Int? retries
    Boolean? list_file_sizes
    String locator
    File path_dot
  }
  command <<<
    arv_ls \
      ~{locator} \
      ~{path_dot} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if (list_file_sizes) then "-s" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    retries: "Maximum number of times to retry server requests that\\nencounter temporary failures (e.g., server down). Default\\n3."
    list_file_sizes: "List file sizes, in KiB."
    locator: "Collection UUID or locator, optionally with a subdir"
    path_dot: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}