version 1.0

task ToilWorker {
  input {
    Int? context
    String job_name
    String job_store_locator
    String job_store_id
  }
  command <<<
    _toil_worker \
      ~{job_name} \
      ~{job_store_locator} \
      ~{job_store_id} \
      ~{if defined(context) then ("--context " +  '"' + context + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/toil:5.2.0--py_0"
  }
  parameter_meta {
    context: "Pickled, base64-encoded context manager(s) to run job\\ninside of. Allows the Toil leader to pass setup and\\ncleanup work provided by the batch system, in the form of\\npickled Python context manager objects, that the worker\\ncan then run before/after the job on the batch system's\\nbehalf.\\n"
    job_name: "Text name of the job being run"
    job_store_locator: "Information required to connect to the job store"
    job_store_id: "ID of the job within the job store"
  }
  output {
    File out_stdout = stdout()
  }
}