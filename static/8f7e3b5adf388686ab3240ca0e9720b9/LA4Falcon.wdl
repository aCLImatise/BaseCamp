version 1.0

task LA4Falcon {
  input {
    Boolean? smfocargyufmpi
  }
  command <<<
    LA4Falcon \
      ~{true="-smfocargyUFMPI" false="" smfocargyufmpi}
  >>>
  parameter_meta {
    smfocargyufmpi: ""
  }
}