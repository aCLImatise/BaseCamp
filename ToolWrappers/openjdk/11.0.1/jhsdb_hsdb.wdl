version 1.0

task JhsdbHsdb {
  input {
    Boolean? exe
    Boolean? core
    Boolean? pid
  }
  command <<<
    jhsdb hsdb \
      ~{if (exe) then "--exe" else ""} \
      ~{if (core) then "--core" else ""} \
      ~{if (pid) then "--pid" else ""}
  >>>
  parameter_meta {
    exe: "executable image name"
    core: "path to coredump"
    pid: "pid of process to attach"
  }
  output {
    File out_stdout = stdout()
  }
}