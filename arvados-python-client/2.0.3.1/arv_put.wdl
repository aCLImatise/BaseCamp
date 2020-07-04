version 1.0

task ArvPut {
  input {
    String? trash_after
    String? project_uuid
    String? name
    Boolean? progress
    Boolean? no_progress
    Boolean? batch_progress
    Boolean? silent
    Boolean? resume
    Boolean? no_resume
    Boolean? cache
    Boolean? no_cache
    String? retries
    File path
  }
  command <<<
    arv-put \
      ~{path} \
      ~{if defined(trash_after) then ("--trash-after " +  '"' + trash_after + '"') else ""} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{true="--progress" false="" progress} \
      ~{true="--no-progress" false="" no_progress} \
      ~{true="--batch-progress" false="" batch_progress} \
      ~{true="--silent" false="" silent} \
      ~{true="--resume" false="" resume} \
      ~{true="--no-resume" false="" no_resume} \
      ~{true="--cache" false="" cache} \
      ~{true="--no-cache" false="" no_cache} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""}
  >>>
  parameter_meta {
    trash_after: "Set the trash date of the resulting collection to an amount of days from the date/time that the upload process finishes."
    project_uuid: "Store the collection in the specified project, instead of your Home project."
    name: "Save the collection with the specified name."
    progress: "Display human-readable progress on stderr (bytes and, if possible, percentage of total data size). This is the default behavior when stderr is a tty."
    no_progress: "Do not display human-readable progress on stderr, even if stderr is a tty."
    batch_progress: "Display machine-readable progress on stderr (bytes and, if known, total data size)."
    silent: "Do not print any debug messages to console. (Any error messages will still be displayed.)"
    resume: "Continue interrupted uploads from cached state (default)."
    no_resume: "Do not continue interrupted uploads from cached state."
    cache: "Save upload state in a cache file for resuming (default)."
    no_cache: "Do not save upload state in a cache file for resuming."
    retries: "Maximum number of times to retry server requests that encounter temporary failures (e.g., server down). Default 3."
    path: "Local file or directory. If path is a directory reference with a trailing slash, then just upload the directory's contents; otherwise upload the directory itself. Default: read from standard input."
  }
}