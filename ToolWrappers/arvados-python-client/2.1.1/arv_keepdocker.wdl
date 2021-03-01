version 1.0

task Arvkeepdocker {
  input {
    Boolean? force
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
    Int? retries
    Boolean? force_image_format
    String image
    String tag
    String server
  }
  command <<<
    arv_keepdocker \
      ~{image} \
      ~{tag} \
      ~{server} \
      ~{if (force) then "--force" else ""} \
      ~{if (pull) then "--pull" else ""} \
      ~{if (no_pull) then "--no-pull" else ""} \
      ~{if defined(project_uuid) then ("--project-uuid " +  '"' + project_uuid + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (no_progress) then "--no-progress" else ""} \
      ~{if (batch_progress) then "--batch-progress" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if (no_resume) then "--no-resume" else ""} \
      ~{if (cache) then "--cache" else ""} \
      ~{if (no_cache) then "--no-cache" else ""} \
      ~{if defined(retries) then ("--retries " +  '"' + retries + '"') else ""} \
      ~{if (force_image_format) then "--force-image-format" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arvados-python-client:2.1.1--py_0"
  }
  parameter_meta {
    force: "Re-upload the image even if it already exists on the"
    pull: "Try to pull the latest image from Docker registry"
    no_pull: "Use locally installed image only, don't pull image\\nfrom Docker registry (default)"
    project_uuid: "Store the collection in the specified project, instead\\nof your Home project."
    name: "Save the collection with the specified name."
    progress: "Display human-readable progress on stderr (bytes and,\\nif possible, percentage of total data size). This is\\nthe default behavior when stderr is a tty."
    no_progress: "Do not display human-readable progress on stderr, even\\nif stderr is a tty."
    batch_progress: "Display machine-readable progress on stderr (bytes\\nand, if known, total data size)."
    silent: "Do not print any debug messages to console. (Any error\\nmessages will still be displayed.)"
    resume: "Continue interrupted uploads from cached state\\n(default)."
    no_resume: "Do not continue interrupted uploads from cached state."
    cache: "Save upload state in a cache file for resuming\\n(default)."
    no_cache: "Do not save upload state in a cache file for resuming."
    retries: "Maximum number of times to retry server requests that\\nencounter temporary failures (e.g., server down).\\nDefault 3.\\n"
    force_image_format: ""
    image: "Docker image to upload: repo, repo:tag, or hash"
    tag: "Tag of the Docker image to upload (default 'latest'),\\nif image is given as an untagged repo name"
    server: "--force-image-format  Proceed even if the image format is not supported by"
  }
  output {
    File out_stdout = stdout()
  }
}