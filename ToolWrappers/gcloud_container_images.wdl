version 1.0

task GcloudContainerImages {
  input {
    String images
    String add_tag
    String delete
    String list
    String list_tags
    String un_tag
  }
  command <<<
    gcloud container images \
      ~{images} \
      ~{add_tag} \
      ~{delete} \
      ~{list} \
      ~{list_tags} \
      ~{un_tag}
  >>>
  parameter_meta {
    images: "SYNOPSIS"
    add_tag: "Adds tags to existing image."
    delete: "Delete existing images."
    list: "List existing images."
    list_tags: "List tags and digests for the specified image."
    un_tag: "Remove existing image tags."
  }
  output {
    File out_stdout = stdout()
  }
}