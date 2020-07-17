version 1.0

task Psascan {
  input {
    String? gap
    String? mem
    String? specify_file_default
    Boolean? verbose
    String? option
  }
  command <<<
    psascan \
      ~{option} \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(specify_file_default) then ("--output " +  '"' + specify_file_default + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    gap: "specify the file holding the gap array (default: FILE.sa5.gap)"
    mem: "limit RAM usage to LIMIT MiB (default: 3072)"
    specify_file_default: "specify the output file (default: FILE.sa5)"
    verbose: "print detailed information during internal sufsort"
    option: ""
  }
}