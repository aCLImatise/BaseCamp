version 1.0

task EmuSubcommands {
  input {
    String emu
  }
  command <<<
    emu sub_commands \
      ~{emu}
  >>>
  runtime {
    docker: "quay.io/biocontainers/emu:1.0.1--0"
  }
  parameter_meta {
    emu: ""
  }
  output {
    File out_stdout = stdout()
  }
}