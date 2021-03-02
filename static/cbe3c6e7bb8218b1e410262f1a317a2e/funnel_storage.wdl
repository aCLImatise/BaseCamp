version 1.0

task FunnelStorage {
  input {
    File? config
    String get
    String list
    String put
    String stat
    String stat_task
  }
  command <<<
    funnel storage \
      ~{get} \
      ~{list} \
      ~{put} \
      ~{stat} \
      ~{stat_task} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config: "Config File"
    get: "Get the object at the given URL."
    list: "List objects at the given URL."
    put: "Put the local file to the given URL."
    stat: "Returns information about the object at the given URL."
    stat_task: "Returns information about inputs/outputs of the task."
  }
  output {
    File out_stdout = stdout()
  }
}