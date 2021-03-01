version 1.0

task Dot2ct {
  input {
    File? quiet
    File bracket_file
    File ct_file
  }
  command <<<
    dot2ct \
      ~{bracket_file} \
      ~{ct_file} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Suppress unnecessary output. This option is implied when the output file is\\n'-' (STDOUT)."
    bracket_file: ""
    ct_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_quiet = "${in_quiet}"
  }
}