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
    File? reference
    Boolean? recursive
    File? verbose
    Boolean? command_line_argument
    Boolean? traverse_symbolic_link
    String encountered
  }
  command <<<
    chcon \
      ~{encountered} \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(role) then ("--role " +  '"' + role + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(range) then ("--range " +  '"' + range + '"') else ""} \
      ~{if (no_preserve_root) then "--no-preserve-root" else ""} \
      ~{if (preserve_root) then "--preserve-root" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (command_line_argument) then "-H" else ""} \
      ~{if (traverse_symbolic_link) then "-L" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    dereference: "affect the referent of each symbolic link (this is\\nthe default), rather than the symbolic link itself"
    user: "set user USER in the target security context"
    role: "set role ROLE in the target security context"
    type: "set type TYPE in the target security context"
    range: "set range RANGE in the target security context"
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's security context rather than specifying\\na CONTEXT value"
    recursive: "operate on files and directories recursively"
    verbose: "output a diagnostic for every file processed"
    command_line_argument: "if a command line argument is a symbolic link\\nto a directory, traverse it"
    traverse_symbolic_link: "traverse every symbolic link to a directory"
    encountered: "-P                     do not traverse any symbolic links (default)"
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}