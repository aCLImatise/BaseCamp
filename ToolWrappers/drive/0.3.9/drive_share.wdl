version 1.0

task DriveShare {
  input {
    File? emails
    String? message
    Boolean? no_prompt
    Boolean? notify
    Boolean? quiet
    String? role
    String? type
    Boolean? verbose
    Boolean? with_link
  }
  command <<<
    drive share \
      ~{if defined(emails) then ("-emails " +  '"' + emails + '"') else ""} \
      ~{if defined(message) then ("-message " +  '"' + message + '"') else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (notify) then "-notify" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(role) then ("-role " +  '"' + role + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (with_link) then "-with-link" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    emails: "emails to share the file to"
    message: "message to send receipients"
    no_prompt: "disables the prompt"
    notify: "toggle whether to notify receipients about share (default true)"
    quiet: "if set, do not log anything but errors"
    role: "role to set to receipients of share. Possible values:\\n* owner.\\n* reader.\\n* writer.\\n* commenter."
    type: "scope of accounts to share files with. Possible values:\\n* anyone.\\n* user.\\n* domain.\\n* group"
    verbose: "show step by step information verbosely (default true)"
    with_link: "turn off file indexing so that only those with the link can view it\\n"
  }
  output {
    File out_stdout = stdout()
  }
}