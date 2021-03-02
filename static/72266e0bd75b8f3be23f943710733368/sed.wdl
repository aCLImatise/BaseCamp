version 1.0

task Sed {
  input {
    Boolean? silent
    Boolean? debug
    String? expression
    File? add_contents_executed
    Boolean? follow_symlinks
    Boolean? edit_files_place
    Int? line_length
    Boolean? posix
    Boolean? regexp_extended
    Boolean? separate
    Boolean? sandbox
    Boolean? unbuffered
    Boolean? null_data
  }
  command <<<
    sed \
      ~{if (silent) then "--silent" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{if defined(add_contents_executed) then ("--file " +  '"' + add_contents_executed + '"') else ""} \
      ~{if (follow_symlinks) then "--follow-symlinks" else ""} \
      ~{if (edit_files_place) then "-i" else ""} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""} \
      ~{if (posix) then "--posix" else ""} \
      ~{if (regexp_extended) then "--regexp-extended" else ""} \
      ~{if (separate) then "--separate" else ""} \
      ~{if (sandbox) then "--sandbox" else ""} \
      ~{if (unbuffered) then "--unbuffered" else ""} \
      ~{if (null_data) then "--null-data" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    silent: "suppress automatic printing of pattern space"
    debug: "annotate program execution"
    expression: "add the script to the commands to be executed"
    add_contents_executed: "add the contents of script-file to the commands to be executed"
    follow_symlinks: "follow symlinks when processing in place"
    edit_files_place: "[SUFFIX], --in-place[=SUFFIX]\\nedit files in place (makes backup if SUFFIX supplied)"
    line_length: "specify the desired line-wrap length for the `l' command"
    posix: "disable all GNU extensions."
    regexp_extended: "use extended regular expressions in the script\\n(for portability use POSIX -E)."
    separate: "consider files as separate rather than as a single,\\ncontinuous long stream."
    sandbox: "operate in sandbox mode (disable e/r/w commands)."
    unbuffered: "load minimal amounts of data from the input files and flush\\nthe output buffers more often"
    null_data: "separate lines by NUL characters"
  }
  output {
    File out_stdout = stdout()
  }
}