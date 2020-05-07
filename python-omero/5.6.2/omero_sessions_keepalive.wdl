version 1.0

task OmeroSessionsKeepalive {
  input {
    String frequencyFrequency
  }
  command <<<
    omero sessions keepalive \
      ~{if defined(frequencyFrequency) then ("--frequency " +  '"' + frequencyFrequency + '"') else ""}
  >>>
}