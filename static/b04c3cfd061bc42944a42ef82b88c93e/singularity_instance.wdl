version 1.0

task SingularityInstance {
  input {
    String instance_dot_list
    String instance_dot_start
    String instance_dot_stop
  }
  command <<<
    singularity instance \
      ~{instance_dot_list} \
      ~{instance_dot_start} \
      ~{instance_dot_stop}
  >>>
  parameter_meta {
    instance_dot_list: "Print all running container instances"
    instance_dot_start: "Start a persistent container instance"
    instance_dot_stop: "Stop and kill all processes within a running instance"
  }
}