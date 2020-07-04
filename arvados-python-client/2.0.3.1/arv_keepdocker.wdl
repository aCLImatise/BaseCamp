version 1.0

task ArvKeepdocker {
  input {
    Boolean? force
    Boolean? force_image_format
    Boolean? pull
    Boolean? no_pull
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
    String image
    String tag
  }
  command <<<
    arv-keepdocker \
      ~{image} \
      ~{tag} \
      ~{true="--force" false="" force} \
      ~{true="--force-image-format" false="" force_image_format} \
      ~{true="--pull" false="" pull} \
      ~{true="--no-pull" false="" no_pull} \
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
    force: "Re-upload the image even if it already exists on the server"
    force_image_format: "Proceed even if the image format is not supported by the server"
    pull: "Try to pull the latest image from Docker registry"
    no_pull: "Use locally installed image only, don't pull image from Docker registry (default)"
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
    image: "Docker image to upload: repo, repo:tag, or hash"
    tag: "Tag of the Docker image to upload (default 'latest'), if image is given as an untagged repo name"
  }
}