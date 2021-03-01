version 1.0

task LA4Falcon {
  input {
    Boolean? smfocargyufmpi
  }
  command <<<
    LA4Falcon \
      ~{if (smfocargyufmpi) then "-smfocargyUFMPI" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    smfocargyufmpi: ""
  }
  output {
    File out_stdout = stdout()
  }
}