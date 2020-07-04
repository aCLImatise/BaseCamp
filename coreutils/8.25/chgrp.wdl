version 1.0

task Chgrp {
  input {
    Boolean? changes
    Boolean? silent
    Boolean? verbose
    Boolean? dereference
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
    chgrp \
      ~{option} \
      ~{true="--changes" false="" changes} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--dereference" false="" dereference} \
      ~{true="--no-preserve-root" false="" no_preserve_root} \
      ~{true="--preserve-root" false="" preserve_root} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--recursive" false="" recursive} \
      ~{true="-H" false="" command_line_argument} \
      ~{true="-L" false="" traverse_symbolic_link} \
      ~{true="-P" false="" traverse_links_default}
  >>>
  parameter_meta {
    changes: "like verbose but report only when a change is made"
    silent: "suppress most error messages"
    verbose: "output a diagnostic for every file processed"
    dereference: "affect the referent of each symbolic link (this is the default), rather than the symbolic link itself"
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's group rather than specifying a GROUP value"
    recursive: "operate on files and directories recursively"
    command_line_argument: "if a command line argument is a symbolic link to a directory, traverse it"
    traverse_symbolic_link: "traverse every symbolic link to a directory encountered"
    traverse_links_default: "do not traverse any symbolic links (default)"
    option: ""
  }
}