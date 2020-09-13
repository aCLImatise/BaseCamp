version 1.0

task H5redeploy {
  input {
    Boolean? echo
    Boolean? force
    Directory? prefix
    Directory? exec_prefix
    Directory? libdir
    Directory? includedir
    Directory? tool
    Boolean? show
  }
  command <<<
    h5redeploy \
      ~{if (echo) then "-echo" else ""} \
      ~{if (force) then "-force" else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(exec_prefix) then ("-exec-prefix " +  '"' + exec_prefix + '"') else ""} \
      ~{if defined(libdir) then ("-libdir " +  '"' + libdir + '"') else ""} \
      ~{if defined(includedir) then ("-includedir " +  '"' + includedir + '"') else ""} \
      ~{if defined(tool) then ("-tool " +  '"' + tool + '"') else ""} \
      ~{if (show) then "-show" else ""}
  >>>
  parameter_meta {
    echo: "Show all the shell commands executed"
    force: "No prompt, just do it"
    prefix: "New directory to find HDF5 lib/ and include/\\nsubdirectories [default: current directory]"
    exec_prefix: "New directory to find HDF5 lib/\\nsubdirectory [default: <prefix>]"
    libdir: "New directory for the HDF5 lib directory\\n[default: <exec-prefix>/lib]"
    includedir: "New directory for the HDF5 header files\\n[default: <prefix>/include]"
    tool: "Tool to update. TOOL must be in the current\\ndirectory and writable. [default: h5cc h5pcc h5fc h5pfc h5c++]"
    show: "Show the commands without executing them"
  }
  output {
    File out_stdout = stdout()
  }
}