version 1.0

task GcloudComputeBackendservices {
  input {
    String add_backend
    String create
    String delete
    String describe
    String edit
    String get_health
    String list
    String remove_backend
    String update
    String update_backend
  }
  command <<<
    gcloud compute backend_services \
      ~{add_backend} \
      ~{create} \
      ~{delete} \
      ~{describe} \
      ~{edit} \
      ~{get_health} \
      ~{list} \
      ~{remove_backend} \
      ~{update} \
      ~{update_backend}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    add_backend: "Add a backend to a backend service."
    create: "Create a backend service."
    delete: "Delete backend services."
    describe: "Display detailed information about a backend service."
    edit: "Modify backend services."
    get_health: "Get backend health statuses from a backend service."
    list: "List Google Compute Engine backend services."
    remove_backend: "Remove a backend from a backend service."
    update: "Update a backend service."
    update_backend: "Update an existing backend in a backend service."
  }
  output {
    File out_stdout = stdout()
  }
}