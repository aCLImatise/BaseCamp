version 1.0

task HailctlDataprocDescribe {
  input {
    String? requester_pays_project_id
  }
  command <<<
    hailctl dataproc describe \
      ~{if defined(requester_pays_project_id) then ("--requester-pays-project-id " +  '"' + requester_pays_project_id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    requester_pays_project_id: "Project to be billed for GCS requests.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}