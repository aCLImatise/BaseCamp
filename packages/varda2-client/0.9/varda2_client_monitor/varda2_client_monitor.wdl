version 1.0

task Varda2clientMonitor {
  input {
    File? task_file
  }
  command <<<
    varda2_client monitor \
      ~{if defined(task_file) then ("--task-file " +  '"' + task_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    task_file: "Filename of tasks to monitor\\n"
  }
  output {
    File out_stdout = stdout()
  }
}