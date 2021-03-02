version 1.0

task HomologyByXCorrSlave {
  input {
    Boolean? master
  }
  command <<<
    HomologyByXCorrSlave \
      ~{if (master) then "-master" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    master: "<string> : name of the submit host"
  }
  output {
    File out_stdout = stdout()
  }
}