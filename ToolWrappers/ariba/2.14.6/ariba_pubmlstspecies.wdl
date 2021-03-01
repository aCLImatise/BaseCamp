version 1.0

task AribaPubmlstspecies {
  input {
    String ariba
    String var_command
    String options
  }
  command <<<
    ariba pubmlstspecies \
      ~{ariba} \
      ~{var_command} \
      ~{options}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
  parameter_meta {
    ariba: ""
    var_command: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}