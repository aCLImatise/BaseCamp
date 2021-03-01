version 1.0

task DriveUnshare {
  input {
    File? emails
    Boolean? no_prompt
    Boolean? quiet
    String? role
    String? type
    Boolean? verbose
  }
  command <<<
    drive unshare \
      ~{if defined(emails) then ("-emails " +  '"' + emails + '"') else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if defined(role) then ("-role " +  '"' + role + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    emails: "emails to share the file to"
    no_prompt: "disables the prompt"
    quiet: "if set, do not log anything but errors"
    role: "role to set to receipients of share. Possible values:\\n* owner.\\n* reader.\\n* writer.\\n* commenter."
    type: "scope of account to revoke access to"
    verbose: "show step by step information verbosely (default true)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}