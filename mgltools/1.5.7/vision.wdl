version 1.0

task Vision {
  input {
    String? no_splash
    String? no_terminal
    Directory? resource_folder
    String? ipython
    String? run
    String? run_and_exit
  }
  command <<<
    vision \
      ~{if defined(no_splash) then ("--noSplash " +  '"' + no_splash + '"') else ""} \
      ~{if defined(no_terminal) then ("--noTerminal " +  '"' + no_terminal + '"') else ""} \
      ~{if defined(resource_folder) then ("--resourceFolder " +  '"' + resource_folder + '"') else ""} \
      ~{if defined(ipython) then ("--ipython " +  '"' + ipython + '"') else ""} \
      ~{if defined(run) then ("--run " +  '"' + run + '"') else ""} \
      ~{if defined(run_and_exit) then ("--runAndExit " +  '"' + run_and_exit + '"') else ""}
  >>>
  parameter_meta {
    no_splash: ": doesn't show the Vision splash screen (works only if registered)"
    no_terminal: ": vision provides its own shell (under menu 'Edit')\\ninstead of the terminal"
    resource_folder: ": stores resource file under .name (defaults to .mgltools)"
    ipython: ": create an ipython shell instead of a python shell"
    run: ": run the networks on the command line"
    run_and_exit: ": run the networks and exit"
  }
  output {
    File out_stdout = stdout()
  }
}