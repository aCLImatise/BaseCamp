version 1.0

task Extractmessages {
  input {
    Boolean? include_following_messages
    Boolean? exclude_following_messages
    Boolean? message
    Boolean? write_output_here
    String? type
  }
  command <<<
    extractmessages \
      ~{type} \
      ~{if (include_following_messages) then "-i" else ""} \
      ~{if (exclude_following_messages) then "-x" else ""} \
      ~{if (message) then "-m" else ""} \
      ~{if (write_output_here) then "-o" else ""}
  >>>
  parameter_meta {
    include_following_messages: "include the following messages in the next output"
    exclude_following_messages: "exclude the following messages from the next output"
    message: "message"
    write_output_here: "write output here"
    type: ""
  }
  output {
    File out_stdout = stdout()
  }
}