version 1.0

task ArbSed {
  input {
    Boolean? silent
    Boolean? debug
    String? expression
    String? file
    Boolean? follow_symlinks
    Boolean? edit_files_place
    String? line_length
    Boolean? posix
    Boolean? regexp_extended
    Boolean? separate
    Boolean? sandbox
    Boolean? unbuffered
    Boolean? null_data
    String sed
    String? option
  }
  command <<<
    arb_sed \
      ~{sed} \
      ~{option} \
      ~{true="--silent" false="" silent} \
      ~{true="--debug" false="" debug} \
      ~{if defined(expression) then ("--expression " +  '"' + expression + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{true="--follow-symlinks" false="" follow_symlinks} \
      ~{true="-i" false="" edit_files_place} \
      ~{if defined(line_length) then ("--line-length " +  '"' + line_length + '"') else ""} \
      ~{true="--posix" false="" posix} \
      ~{true="--regexp-extended" false="" regexp_extended} \
      ~{true="--separate" false="" separate} \
      ~{true="--sandbox" false="" sandbox} \
      ~{true="--unbuffered" false="" unbuffered} \
      ~{true="--null-data" false="" null_data}
  >>>
  parameter_meta {
    silent: "suppress automatic printing of pattern space"
    debug: "annotate program execution"
    expression: "add the script to the commands to be executed"
    file: "add the contents of script-file to the commands to be executed"
    follow_symlinks: "follow symlinks when processing in place"
    edit_files_place: "[SUFFIX], --in-place[=SUFFIX] edit files in place (makes backup if SUFFIX supplied)"
    line_length: "specify the desired line-wrap length for the `l' command"
    posix: "disable all GNU extensions."
    regexp_extended: "use extended regular expressions in the script (for portability use POSIX -E)."
    separate: "consider files as separate rather than as a single, continuous long stream."
    sandbox: "operate in sandbox mode (disable e/r/w commands)."
    unbuffered: "load minimal amounts of data from the input files and flush the output buffers more often"
    null_data: "separate lines by NUL characters"
    sed: ""
    option: ""
  }
}