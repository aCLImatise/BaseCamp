version 1.0

task GcloudComputeDisks {
  input {
    String add_labels
    String create
    String delete
    String describe
    String list
    String move
    String remove_labels
    String resize
    String snapshot
    String update
  }
  command <<<
    gcloud compute disks \
      ~{add_labels} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{list} \
      ~{move} \
      ~{remove_labels} \
      ~{resize} \
      ~{snapshot} \
      ~{update}
  >>>
  parameter_meta {
    add_labels: "Add labels to Google Compute Engine persistent disks."
    create: "Create Google Compute Engine persistent disks."
    delete: "Delete Google Compute Engine persistent disks."
    describe: "Describe a Google Compute Engine disk."
    list: "List Google Compute Engine disks."
    move: "Move a disk between zones."
    remove_labels: "Remove labels from Google Compute Engine persistent disks."
    resize: "Resize a disk or disks."
    snapshot: "Create snapshots of Google Compute Engine persistent disks."
    update: "Update a Google Compute Engine persistent disk."
  }
  output {
    File out_stdout = stdout()
  }
}