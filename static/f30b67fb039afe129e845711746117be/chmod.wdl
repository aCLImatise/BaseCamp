version 1.0

task Chmod {
  input {
    Boolean? changes
    Boolean? silent
    Boolean? verbose
    Boolean? no_preserve_root
    Boolean? preserve_root
    String? reference
    Boolean? recursive
    String? option
  }
  command <<<
    chmod \
      ~{option} \
      ~{true="--changes" false="" changes} \
      ~{true="--silent" false="" silent} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--no-preserve-root" false="" no_preserve_root} \
      ~{true="--preserve-root" false="" preserve_root} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--recursive" false="" recursive}
  >>>
  parameter_meta {
    changes: "like verbose but report only when a change is made"
    silent: "suppress most error messages"
    verbose: "output a diagnostic for every file processed"
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's mode instead of MODE values"
    recursive: "change files and directories recursively"
    option: ""
  }
}