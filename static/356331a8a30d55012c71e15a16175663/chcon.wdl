version 1.0

task Chcon {
  input {
    Boolean? dereference
    String? user
    String? role
    String? type
    String? range
    Boolean? no_preserve_root
    Boolean? preserve_root
    String? reference
    Boolean? recursive
    Boolean? verbose
    Boolean? command_line_argument
    Boolean? traverse_symbolic_link
    Boolean? traverse_links_default
    String? option
  }
  command <<<
    chcon \
      ~{option} \
      ~{true="--dereference" false="" dereference} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{true="--no-preserve-root" false="" no_preserve_root} \
      ~{true="--preserve-root" false="" preserve_root} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-H" false="" command_line_argument} \
      ~{true="-L" false="" traverse_symbolic_link} \
      ~{true="-P" false="" traverse_links_default}
  >>>
  parameter_meta {
    dereference: "affect the referent of each symbolic link (this is the default), rather than the symbolic link itself"
    user: "set user USER in the target security context"
    role: "set role ROLE in the target security context"
    type: "set type TYPE in the target security context"
    range: "set range RANGE in the target security context"
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's security context rather than specifying a CONTEXT value"
    recursive: "operate on files and directories recursively"
    verbose: "output a diagnostic for every file processed"
    command_line_argument: "if a command line argument is a symbolic link to a directory, traverse it"
    traverse_symbolic_link: "traverse every symbolic link to a directory encountered"
    traverse_links_default: "do not traverse any symbolic links (default)"
    option: ""
  }
}