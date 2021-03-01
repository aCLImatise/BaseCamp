version 1.0

task DgeniesInforun {
  input {
    String? message
    String? type
    Boolean? clear
  }
  command <<<
    dgenies inforun \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if (clear) then "--clear" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    message: "Message to add"
    type: "Type of message"
    clear: "Remove message"
  }
  output {
    File out_stdout = stdout()
  }
}