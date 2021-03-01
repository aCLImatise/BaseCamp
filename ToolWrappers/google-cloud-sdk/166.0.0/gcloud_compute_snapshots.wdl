version 1.0

task GcloudComputeSnapshots {
  input {
    String snapshots
    String add_labels
    String delete
    String describe
    String list
    String remove_labels
    String update
  }
  command <<<
    gcloud compute snapshots \
      ~{snapshots} \
      ~{add_labels} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{remove_labels} \
      ~{update}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    snapshots: "SYNOPSIS"
    add_labels: "Add labels to Google Compute Engine snapshots."
    delete: "Delete Google Compute Engine snapshots."
    describe: "Describe a Google Compute Engine snapshot."
    list: "List Google Compute Engine snapshots."
    remove_labels: "Remove labels from Google Compute Engine snapshots."
    update: "Update a Google Compute Engine snapshot."
  }
  output {
    File out_stdout = stdout()
  }
}