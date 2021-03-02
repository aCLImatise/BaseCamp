version 1.0

task Parmed {
  input {
    File? script_parmed_commands
    String? parm
    String? in_pc_rd
    Boolean? overwrite
    File? log_file
    String? prompt
    Boolean? no_splash
    Boolean? enable_interpreter
    Boolean? strict
    Boolean? relaxed
    Boolean? v
  }
  command <<<
    parmed \
      ~{if defined(script_parmed_commands) then ("--input " +  '"' + script_parmed_commands + '"') else ""} \
      ~{if defined(parm) then ("--parm " +  '"' + parm + '"') else ""} \
      ~{if defined(in_pc_rd) then ("--inpcrd " +  '"' + in_pc_rd + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(prompt) then ("--prompt " +  '"' + prompt + '"') else ""} \
      ~{if (no_splash) then "--no-splash" else ""} \
      ~{if (enable_interpreter) then "--enable-interpreter" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (relaxed) then "--relaxed" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    script_parmed_commands: "Script with ParmEd commands to execute. Default reads\\nfrom stdin. Can be specified multiple times to process\\nmultiple input files."
    parm: "List of topology files to load into ParmEd. Can be\\nspecified multiple times to process multiple\\ntopologies."
    in_pc_rd: "List of inpcrd files to load into ParmEd. They are\\npaired with the topology files in the same order that\\neach set of files is specified on the command-line."
    overwrite: "Allow ParmEd to overwrite existing files."
    log_file: "Log file with every command executed during an\\ninteractive ParmEd session. Default is parmed.log"
    prompt: "String to use as a command prompt."
    no_splash: "Prevent printing the greeting logo."
    enable_interpreter: "Allow arbitrary single Python commands or blocks of\\nPython code to be run. By default Python commands will\\nnot be run as a safeguard for your system. Make sure\\nyou trust the source of the ParmEd command before\\nturning this option on."
    strict: "Prevent scripts from running past unrecognized input\\nand actions that end with an error. In interactive\\nmode, actions with unrecognized inputs and failed\\nactions prevent any changes from being made to the\\ntopology, but does not quit the interpreter. This is\\nthe default behavior."
    relaxed: "Scripts ignore unrecognized input and simply skip over\\nfailed actions, executing the rest of the script.\\nUnrecognized input in the interactive interpreter\\nemits a non-fatal warning.\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}