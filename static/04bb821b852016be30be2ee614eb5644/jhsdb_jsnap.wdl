version 1.0

task JhsdbJsnap {
  input {
    Boolean? all
    Boolean? exe
    Boolean? core
    Boolean? pid
  }
  command <<<
    jhsdb jsnap \
      ~{if (all) then "--all" else ""} \
      ~{if (exe) then "--exe" else ""} \
      ~{if (core) then "--core" else ""} \
      ~{if (pid) then "--pid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    all: "to print all performance counters"
    exe: "executable image name"
    core: "path to coredump"
    pid: "pid of process to attach"
  }
  output {
    File out_stdout = stdout()
  }
}