version 1.0

task OmeroSessionsTimeout {
  input {
    String? session
    String seconds
  }
  command <<<
    omero sessions timeout \
      ~{seconds} \
      ~{if defined(session) then ("--session " +  '"' + session + '"') else ""}
  >>>
  parameter_meta {
    session: "Session other than the current to update"
    seconds: "Number of seconds to set the timeToIdle value to"
  }
}