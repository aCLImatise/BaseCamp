version 1.0

task Psascan {
  input {
    File? gap
    Int? mem
    File? specify_file_default
    Boolean? verbose
  }
  command <<<
    psascan \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(specify_file_default) then ("--output " +  '"' + specify_file_default + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    gap: "specify the file holding the gap array (default:\\nFILE.sa5.gap)"
    mem: "limit RAM usage to LIMIT MiB (default: 3072)"
    specify_file_default: "specify the output file (default: FILE.sa5)"
    verbose: "print detailed information during internal sufsort"
  }
  output {
    File out_stdout = stdout()
    File out_specify_file_default = "${in_specify_file_default}"
  }
}