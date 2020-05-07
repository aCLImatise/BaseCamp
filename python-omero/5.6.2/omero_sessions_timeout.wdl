version 1.0

task OmeroSessionsTimeout {
  input {
    String sessionSession
    String? secondsSeconds
  }
  command <<<
    omero sessions timeout \
      ~{secondsSeconds} \
      ~{if defined(sessionSession) then ("--session " +  '"' + sessionSession + '"') else ""}
  >>>
}