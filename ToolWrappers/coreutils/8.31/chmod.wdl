version 1.0

task Chmod {
  input {
    Boolean? changes
    Boolean? silent
    File? verbose
    Boolean? no_preserve_root
    Boolean? preserve_root
    File? reference
    Boolean? recursive
  }
  command <<<
    chmod \
      ~{if (changes) then "--changes" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_preserve_root) then "--no-preserve-root" else ""} \
      ~{if (preserve_root) then "--preserve-root" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if (recursive) then "--recursive" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    changes: "like verbose but report only when a change is made"
    silent: "suppress most error messages"
    verbose: "output a diagnostic for every file processed"
    no_preserve_root: "do not treat '/' specially (the default)"
    preserve_root: "fail to operate recursively on '/'"
    reference: "use RFILE's mode instead of MODE values"
    recursive: "change files and directories recursively"
  }
  output {
    File out_stdout = stdout()
    File out_verbose = "${in_verbose}"
  }
}