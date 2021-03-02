version 1.0

task Dexta {
  input {
    Boolean? vk
  }
  command <<<
    dexta \
      ~{if (vk) then "-vk" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vk: ""
  }
  output {
    File out_stdout = stdout()
  }
}