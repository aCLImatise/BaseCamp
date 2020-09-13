version 1.0

task Chown {
  input {
    Boolean? changes
    Boolean? silent
    File? verbose
    Boolean? dereference
    File? from
    Boolean? no_preserve_root
    Boolean? preserve_root
    File? reference
    Boolean? recursive
    Boolean? command_line_argument
    Boolean? traverse_symbolic_link
    String encountered
  }
  command <<<
    chown \
      ~{encountered} \
      ~{if (changes) then "--changes" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if defined(from) then ("--from " +  '"' + from + '"') else ""} \
      ~{if (no_preserve_root) then "--no-preserve-root" else ""} \
      ~{if (preserve_root) then "--preserve-root" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (command_line_argument) then "-H" else ""} \
      ~{if (traverse_symbolic_link) then "-L" else ""}
  >>>
  parameter_meta {
    changes: "like verbose but report only when a change is made"
    silent: "suppress most error messages"
    verbose: "output a diagnostic for every file processed"
    dereference: "affect the referent of each symbolic link (this is\\nthe default), rather than the symbolic link itself"
    from: ":CURRENT_GROUP\\nchange the owner and/or group of each file only if\\nits current owner and/or group match those specified\\nhere.  Either may be omitted, in which case a match\\nis not required for the omitted attribute"
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's owner and group rather than\\nspecifying OWNER:GROUP values"
    recursive: "operate on files and directories recursively"
    command_line_argument: "if a command line argument is a symbolic link\\nto a directory, traverse it"
    traverse_symbolic_link: "traverse every symbolic link to a directory"
    encountered: "-P                     do not traverse any symbolic links (default)"
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}