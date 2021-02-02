version 1.0

task LA4Falcon {
  input {
    Boolean? smfocargyufmpi
  }
  command <<<
    LA4Falcon \
      ~{if (smfocargyufmpi) then "-smfocargyUFMPI" else ""}
  >>>
  parameter_meta {
    smfocargyufmpi: ""
  }
  output {
    File out_stdout = stdout()
  }
}