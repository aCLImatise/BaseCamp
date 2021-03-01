version 1.0

task JhsdbJinfo {
  input {
    Boolean? flags
    Boolean? sys_props
    Boolean? exe
    Boolean? core
    Boolean? pid
  }
  command <<<
    jhsdb jinfo \
      ~{if (flags) then "--flags" else ""} \
      ~{if (sys_props) then "--sysprops" else ""} \
      ~{if (exe) then "--exe" else ""} \
      ~{if (core) then "--core" else ""} \
      ~{if (pid) then "--pid" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    flags: "to print VM flags"
    sys_props: "to print Java System properties"
    exe: "executable image name"
    core: "path to coredump"
    pid: "pid of process to attach"
  }
  output {
    File out_stdout = stdout()
  }
}