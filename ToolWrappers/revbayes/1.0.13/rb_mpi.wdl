version 1.0

task Rbmpi {
  input {
    Boolean? show_version_exit
    Boolean? run_batch_mode
    String? args
    File? files_to_source
    String? setoption
    String variables_dot
  }
  command <<<
    rb_mpi \
      ~{variables_dot} \
      ~{if (show_version_exit) then "-v" else ""} \
      ~{if (run_batch_mode) then "-b" else ""} \
      ~{if defined(args) then ("--args " +  '"' + args + '"') else ""} \
      ~{if defined(files_to_source) then ("--file " +  '"' + files_to_source + '"') else ""} \
      ~{if defined(setoption) then ("--setOption " +  '"' + setoption + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    show_version_exit: "[ --version ]      Show version and exit."
    run_batch_mode: "[ --batch ]        Run in batch mode."
    args: "Command line arguments to initialize RevBayes"
    files_to_source: "File(s) to source."
    setoption: "Set an option key=value."
    variables_dot: "--cmd arg             Script and command line arguments to initialize "
  }
  output {
    File out_stdout = stdout()
  }
}