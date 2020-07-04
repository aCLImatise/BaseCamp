version 1.0

task ArvCopy {
  input {
    Boolean? verbose
    Boolean? progress
    Boolean? no_progress
    Boolean? force
    String? src
    String? dst
    Boolean? recursive
    Boolean? no_recursive
    String? project_uuid
    String? retries
    String object_uuid
  }
  command <<<
    arv-copy \
      ~{object_uuid} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--progress" false="" progress} \
      ~{true="--no-progress" false="" no_progress} \
      ~{true="--force" false="" force} \
      ~{if defined(src) then ("--src " +  '"' + src + '"') else ""} \
      ~{if defined(dst) then ("--dst " +  '"' + dst + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--no-recursive" false="" no_recursive} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""}
  >>>
  parameter_meta {
    verbose: "Verbose output."
    progress: "Report progress on copying collections. (default)"
    no_progress: "Do not report progress on copying collections."
    force: "Perform copy even if the object appears to exist at the remote destination."
    src: "The name of the source Arvados instance (required) - points at an Arvados config file. May be either a pathname to a config file, or (for example) \"foo\" as shorthand for $HOME/.config/arvados/foo.conf."
    dst: "The name of the destination Arvados instance (required) - points at an Arvados config file. May be either a pathname to a config file, or (for example) \"foo\" as shorthand for $HOME/.config/arvados/foo.conf."
    recursive: "Recursively copy any dependencies for this object. (default)"
    no_recursive: "Do not copy any dependencies. NOTE: if this option is given, the copied object will need to be updated manually in order to be functional."
    project_uuid: "The UUID of the project at the destination to which the collection or workflow should be copied."
    retries: "Maximum number of times to retry server requests that encounter temporary failures (e.g., server down). Default 3."
    object_uuid: "The UUID of the object to be copied."
  }
}