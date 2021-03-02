version 1.0

task Tinysink {
  input {
    String? user
    String? server
    String? displays
  }
  command <<<
    tinysink \
      ~{if defined(user) then ("--User " +  '"' + user + '"') else ""} \
      ~{if defined(server) then ("--Server " +  '"' + server + '"') else ""} \
      ~{if defined(displays) then ("--Displays " +  '"' + displays + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    user: "to log into the server with. [REQUIRED]."
    server: "to transfer to. [REQUIRED]."
    displays: "help message. No further functions are performed."
  }
  output {
    File out_stdout = stdout()
  }
}