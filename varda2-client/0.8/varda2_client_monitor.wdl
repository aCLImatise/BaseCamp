version 1.0

task Varda2ClientMonitor {
  input {
    String? task_file
  }
  command <<<
    varda2-client monitor \
      ~{if defined(task_file) then ("--task-file " +  '"' + task_file + '"') else ""}
  >>>
  parameter_meta {
    task_file: "Filename of tasks to monitor"
  }
}