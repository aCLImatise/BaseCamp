version 1.0

task SubtractBedGraphsDirectorypl {
  input {
    String? prefix
    Boolean? center
  }
  command <<<
    subtractBedGraphsDirectory_pl \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if (center) then "-center" else ""}
  >>>
  parameter_meta {
    prefix: "(will separate bedGraphs based on this name)"
    center: "(center bedGraphs on average signal, removes global differences)"
  }
  output {
    File out_stdout = stdout()
  }
}