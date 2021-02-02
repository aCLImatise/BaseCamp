version 1.0

task Jinfo {
  input {
    Boolean? flags
    Boolean? sys_props
    String option
    String pid
  }
  command <<<
    jinfo \
      ~{option} \
      ~{pid} \
      ~{if (flags) then "-flags" else ""} \
      ~{if (sys_props) then "-sysprops" else ""}
  >>>
  parameter_meta {
    flags: "to print VM flags"
    sys_props: "to print Java system properties"
    option: ""
    pid: ""
  }
  output {
    File out_stdout = stdout()
  }
}