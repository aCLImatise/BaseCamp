version 1.0

task Psascan {
  input {
    File? gap
    Int? mem
    File? specify_default_filesa
    Boolean? verbose
  }
  command <<<
    psascan \
      ~{if defined(gap) then ("--gap " +  '"' + gap + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(specify_default_filesa) then ("--output " +  '"' + specify_default_filesa + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap: "specify the file holding the gap array (default:\\nFILE.sa5.gap)"
    mem: "limit RAM usage to LIMIT MiB (default: 3072)"
    specify_default_filesa: "specify the output file (default: FILE.sa5)"
    verbose: "print detailed information during internal sufsort"
  }
  output {
    File out_stdout = stdout()
    File out_specify_default_filesa = "${in_specify_default_filesa}"
  }
}