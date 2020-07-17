version 1.0

task OmeroSessionsKeepalive {
  input {
    String? frequency
  }
  command <<<
    omero sessions keepalive \
      ~{if defined(frequency) then ("--frequency " +  '"' + frequency + '"') else ""}
  >>>
  parameter_meta {
    frequency: "Time in seconds between keep alive calls"
  }
}