version 1.0

task Chown {
  input {
    Boolean? no_preserve_root
    Boolean? preserve_root
    String? reference
    Boolean? recursive
    Boolean? command_line_argument
    Boolean? traverse_symbolic_link
    Boolean? traverse_links_default
    String? option
  }
  command <<<
    chown \
      ~{option} \
      ~{true="--no-preserve-root" false="" no_preserve_root} \
      ~{true="--preserve-root" false="" preserve_root} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="-H" false="" command_line_argument} \
      ~{true="-L" false="" traverse_symbolic_link} \
      ~{true="-P" false="" traverse_links_default}
  >>>
  parameter_meta {
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's owner and group rather than specifying OWNER:GROUP values"
    recursive: "operate on files and directories recursively"
    command_line_argument: "if a command line argument is a symbolic link to a directory, traverse it"
    traverse_symbolic_link: "traverse every symbolic link to a directory encountered"
    traverse_links_default: "do not traverse any symbolic links (default)"
    option: ""
  }
}