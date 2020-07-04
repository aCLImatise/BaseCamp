version 1.0

task SubtractBedGraphsDirectory.pl {
  input {
    String? prefix
    Boolean? center
  }
  command <<<
    subtractBedGraphsDirectory.pl \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{true="-center" false="" center}
  >>>
  parameter_meta {
    prefix: "(will separate bedGraphs based on this name)"
    center: "(center bedGraphs on average signal, removes global differences)"
  }
}