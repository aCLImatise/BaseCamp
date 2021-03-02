version 1.0

task Arvcopy {
  input {
    Boolean? verbose
    Boolean? progress
    Boolean? no_progress
    Boolean? force
    File? src
    File? dst
    Boolean? recursive
    Boolean? no_recursive
    String? project_uuid
    Int? retries
  }
  command <<<
    arv_copy \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(src) then ("--src " +  '"' + src + '"') else ""} \
      ~{if defined(dst) then ("--dst " +  '"' + dst + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (no_recursive) then "--no-recursive" else ""} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-python-client:2.1.1--py_0"
  }
  parameter_meta {
    verbose: "Verbose output."
    progress: "Report progress on copying collections. (default)"
    no_progress: "Do not report progress on copying collections."
    force: "Perform copy even if the object appears to exist at\\nthe remote destination."
    src: "The name of the source Arvados instance (required) -\\npoints at an Arvados config file. May be either a\\npathname to a config file, or (for example) \\\"foo\\\" as\\nshorthand for $HOME/.config/arvados/foo.conf."
    dst: "The name of the destination Arvados instance\\n(required) - points at an Arvados config file. May be\\neither a pathname to a config file, or (for example)\\n\\\"foo\\\" as shorthand for $HOME/.config/arvados/foo.conf."
    recursive: "Recursively copy any dependencies for this object, and\\nsubprojects. (default)"
    no_recursive: "Do not copy any dependencies or subprojects."
    project_uuid: "The UUID of the project at the destination to which\\nthe collection or workflow should be copied."
    retries: "Maximum number of times to retry server requests that\\nencounter temporary failures (e.g., server down).\\nDefault 3.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}