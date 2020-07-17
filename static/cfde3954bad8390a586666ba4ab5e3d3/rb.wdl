version 1.0

task Rb {
  input {
    Boolean? show_version_exit
    Boolean? run_batch_mode
    String? args
    String? cmd
    String? file
    String? setoption
  }
  command <<<
    rb \
      ~{true="-v" false="" show_version_exit} \
      ~{true="-b" false="" run_batch_mode} \
      ~{if defined(args) then ("--args " +  '"' + args + '"') else ""} \
      ~{if defined(cmd) then ("--cmd " +  '"' + cmd + '"') else ""} \
      ~{if defined(file) then ("--file " +  '"' + file + '"') else ""} \
      ~{if defined(setoption) then ("--setOption " +  '"' + setoption + '"') else ""}
  >>>
  parameter_meta {
    show_version_exit: "[ --version ]      Show version and exit."
    run_batch_mode: "[ --batch ]        Run in batch mode."
    args: "Command line arguments to initialize RevBayes  variables."
    cmd: "Script and command line arguments to initialize  RevBayes variables."
    file: "File(s) to source."
    setoption: "Set an option key=value."
  }
}