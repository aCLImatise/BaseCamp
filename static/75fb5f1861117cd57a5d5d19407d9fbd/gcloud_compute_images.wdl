version 1.0

task GcloudComputeImages {
  input {
    String images
    String add_labels
    String create
    String delete
    String deprecate
    String describe
    String describe_from_family
    String list
    String remove_labels
    String update
  }
  command <<<
    gcloud compute images \
      ~{images} \
      ~{add_labels} \
      ~{create} \
      ~{delete} \
      ~{deprecate} \
      ~{describe} \
      ~{describe_from_family} \
      ~{list} \
      ~{remove_labels} \
      ~{update}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    images: "SYNOPSIS"
    add_labels: "Add labels to Google Compute Engine images."
    create: "Create Google Compute Engine images."
    delete: "Delete Google Compute Engine images."
    deprecate: "Manage deprecation status of Google Compute Engine images."
    describe: "Describe a Google Compute Engine image."
    describe_from_family: "Describe the latest image from an image family."
    list: "List Google Compute Engine images."
    remove_labels: "Remove labels from Google Compute Engine images."
    update: "Update a Google Compute Engine image."
  }
  output {
    File out_stdout = stdout()
  }
}